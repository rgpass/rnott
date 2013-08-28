class Restaurant < ActiveRecord::Base
  attr_accessible :addy, :ambiguous, :cost, :date, :hood, :name, :patio

	def self.search(params)
    	res = order('created_at DESC')
      #res = res.where('name LIKE ?', "%#{params[:search]}%").order('created_at DESC') if params[:search].present?
      #res = res.where('addy LIKE ?', "%#{params[:addy]}%") if params[:addy].present?
      res = res.where('patio = ?', params[:patio] == "on" ? true : false) if params[:patio].present?
      res = res.where('cost <= ?', params[:cost])
			res = res.where('date = ?', params[:date] == "on" ? true : false) if params[:date].present?
      res = res.where('hood = ? OR hood = ? OR hood = ? OR hood = ?', 
      								params[:buckhead] == "on" ? "Buckhead" : false, 
      								params[:midtown] == "on" ? "Midtown" : false,
      								params[:decatur] == "on" ? "Decatur" : false,
      								params[:vahighlands] == "on" ? "VA Highlands" : false)
      #res = res.shuffle[1]
      res
  end
end

class Restaurant < ActiveRecord::Base
  attr_accessible :addy, :ambiguous, :cost, :date, :hood, :name, :patio

	def self.search(params)
    	res = order('created_at DESC')
      res = res.where('name LIKE ?', "%#{params[:search]}%").order('created_at DESC') if params[:search].present?
      res = res.where('addy LIKE ?', "%#{params[:addy]}%") if params[:addy].present?
      res = res.where('patio = ?', params[:patio] == "on" ? true : false) if params[:patio].present?
      res = res.where('cost <= ?', params[:cost])
			res = res.where('date = ?', params[:date] == "on" ? true : false) if params[:date].present?
      res = res.where('hood = ?', params[:buckhead] == "on" ? "Buckhead" : false) if params[:buckhead].present?
      res = res.where('hood = ?', params[:midtown] == "on" ? "Midtown" : false) if params[:midtown].present?
      res = res.where('hood = ?', params[:decatur] == "on" ? "Decatur" : false) if params[:decatur].present?
      res = res.where('hood = ?', params[:vahighlands] == "on" ? "VA Highlands" : false) if params[:vahighlands].present?
      res
  end
end

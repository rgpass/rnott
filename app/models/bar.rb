class Bar < ActiveRecord::Base
  attr_accessible :addyb, :ambiguousb, :costb, :dateb, :hoodb, :kindb, :nameb, :patiob

  def self.search(params)
  	resb = order('created_at DESC')
    #res = res.where('name LIKE ?', "%#{params[:search]}%").order('created_at DESC') if params[:search].present?
    #res = res.where('addy LIKE ?', "%#{params[:addy]}%") if params[:addy].present?
    resb = resb.where('kindb = ?', params[:kindb]) if params[:kindb] != "Either"
    resb = resb.where('patiob = ?', params[:patio] == "on" ? true : false) if params[:patio] != "off"
    resb = resb.where('costb <= ?', params[:costb])
		resb = resb.where('dateb = ?', params[:date] == "on" ? true : false) if params[:date] != "off"
    resb = resb.where('hoodb = ? OR hoodb = ? OR hoodb = ? OR hoodb = ?', 
    								params[:buckhead] == "on" ? "Buckhead" : false, 
    								params[:midtown] == "on" ? "Midtown" : false,
    								params[:decatur] == "on" ? "Decatur" : false,
    								params[:vahighlands] == "on" ? "VA Highlands" : false)
    resb
  end
end

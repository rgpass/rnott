class Bar < ActiveRecord::Base
  attr_accessible :addyb, :ambiguousb, :costb, :dateb, :hoodb, :kindb, :nameb, :patiob

  def self.search(params)
  	#resb = order('created_at DESC')
  	#resb
  end
end

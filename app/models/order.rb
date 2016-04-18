class Order < ActiveRecord::Base
	belongs_to :page
	has_many :variations
	has_many :products
	has_many :payment_methods

end

class Page < ActiveRecord::Base
	has_many :orders
	has_many :products
	accepts_nested_attributes_for :orders
	accepts_nested_attributes_for :products

end

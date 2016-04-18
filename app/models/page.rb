class Page < ActiveRecord::Base
	has_many :orders
	has_many :payment_methods
	accepts_nested_attributes_for :orders
	accepts_nested_attributes_for :payment_methods
end

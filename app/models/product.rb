class Product < ActiveRecord::Base
	belongs_to :order
	belongs_to :page
end

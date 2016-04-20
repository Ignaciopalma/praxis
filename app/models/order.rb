class Order < ActiveRecord::Base
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :phone, presence: true
	validates :email, presence: true

	belongs_to :page
	has_many :variations
	has_many :products
	has_many :payment_methods

end

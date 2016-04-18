class AddOrderIdToPaymentMethod < ActiveRecord::Migration
  def change
    add_reference :payment_methods, :order, index: true, foreign_key: true
  end
end

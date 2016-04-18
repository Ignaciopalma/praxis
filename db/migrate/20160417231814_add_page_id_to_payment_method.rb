class AddPageIdToPaymentMethod < ActiveRecord::Migration
  def change
    add_reference :payment_methods, :page, index: true, foreign_key: true
  end
end

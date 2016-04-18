class AddReferencesToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :variation, index: true, foreign_key: true
    add_reference :orders, :product, index: true, foreign_key: true
  end
end

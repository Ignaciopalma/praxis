class AddPageIdToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :page, index: true, foreign_key: true
  end
end

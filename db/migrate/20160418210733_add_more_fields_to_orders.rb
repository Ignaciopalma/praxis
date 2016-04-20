class AddMoreFieldsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :rut, :integer
    add_column :orders, :region, :string
    add_column :orders, :total, :integer
    add_column :orders, :abono, :integer
    add_column :orders, :saldo, :integer
  end
end

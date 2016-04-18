class AddFieldsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :transferencia_bancaria, :boolean
    add_column :orders, :pago_en_tienda, :boolean
    add_column :orders, :email, :string
    add_column :orders, :ciudad, :string
  end
end

class RemoveFieldsFromPages < ActiveRecord::Migration
  def change
    remove_column :pages, :first_name, :string
    remove_column :pages, :last_name, :string
    remove_column :pages, :address, :string
    remove_column :pages, :phone, :integer
    remove_column :pages, :transferencia_bancaria, :boolean
    remove_column :pages, :pago_en_tienda, :boolean
    remove_column :pages, :email, :string
    remove_column :pages, :ciudad, :string
  end
end

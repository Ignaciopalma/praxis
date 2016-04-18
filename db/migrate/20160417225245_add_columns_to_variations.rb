class AddColumnsToVariations < ActiveRecord::Migration
  def change
    add_column :variations, :payment_method, :string
  end
end

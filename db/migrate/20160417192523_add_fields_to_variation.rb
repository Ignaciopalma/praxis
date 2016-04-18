class AddFieldsToVariation < ActiveRecord::Migration
  def change
    add_column :variations, :color, :string
    add_column :variations, :size, :string
  end
end

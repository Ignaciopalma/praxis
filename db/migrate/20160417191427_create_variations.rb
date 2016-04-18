class CreateVariations < ActiveRecord::Migration
  def change
    create_table :variations do |t|
      t.string :type
      t.integer :cost

      t.timestamps null: false
    end
  end
end

class AddPageIdToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :page, index: true, foreign_key: true
  end
end

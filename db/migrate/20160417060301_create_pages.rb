class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :address
    	t.integer :phone
    	t.boolean :transferencia_bancaria
        t.boolean :pago_en_tienda
    	t.string :email
    	t.string :ciudad

      t.timestamps null: false
    end
  end
end

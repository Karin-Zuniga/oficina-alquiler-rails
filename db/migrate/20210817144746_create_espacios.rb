class CreateEspacios < ActiveRecord::Migration[6.1]
  def change
    create_table :espacios do |t|
      t.string :codigo
      t.float :precio
      t.boolean :esta_alquilada

      t.timestamps
    end
  end
end

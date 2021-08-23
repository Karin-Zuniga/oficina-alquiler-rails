class AddApellidoToInquilinos < ActiveRecord::Migration[6.1]
  def change
    add_column :inquilinos, :apellido, :string
  end
end

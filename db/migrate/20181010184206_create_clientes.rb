class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :nit
      t.string :nombre
      t.string :direccion

      t.timestamps
    end
  end
end

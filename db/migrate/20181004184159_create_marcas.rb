class CreateMarcas < ActiveRecord::Migration[5.2]
  def change
    create_table :marcas do |t|
      t.string :nombre
      t.text :descripcion
      t.string :estado

      t.timestamps
    end
  end
end

class CreateCategorias < ActiveRecord::Migration[5.2]
  def change
    create_table :categorias do |t|
      t.text :descripcion
      t.string :estado

      t.timestamps
    end
  end
end

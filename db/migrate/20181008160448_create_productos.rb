class CreateProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|
      t.string :codigo
      t.string :nombre
      t.references :marca, foreign_key: true
      t.references :categoria, foreign_key: true
      t.text :descripcion
      t.decimal :costo
      t.decimal :ganancia

      t.timestamps
    end
  end
end

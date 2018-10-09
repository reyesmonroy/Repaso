class CreateFacturaDetalles < ActiveRecord::Migration[5.2]
  def change
    create_table :factura_detalles do |t|
      t.references :factura, foreign_key: true
      t.integer :cantidad
      t.references :producto, foreign_key: true
      t.decimal :precio
      t.decimal :total

      t.timestamps
    end
  end
end

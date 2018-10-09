class CreateFacturas < ActiveRecord::Migration[5.2]
  def change
    create_table :facturas do |t|
      t.date :fecha
      t.string :nit
      t.string :nombre
      t.decimal :total
      t.string :estado

      t.timestamps
    end
  end
end

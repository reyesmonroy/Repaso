class FacturaDetalle < ApplicationRecord
  belongs_to :factura
  belongs_to :producto
  validates_presence_of :precio, :total
  validates_presence_of :cantidad, numericality: {greater_than: 0}
end

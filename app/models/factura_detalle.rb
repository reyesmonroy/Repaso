 class FacturaDetalle < ApplicationRecord
  belongs_to :factura
  belongs_to :producto
  validates_presence_of :precio, :total
  validates :cantidad, :numericality => { greater_than_or_equal_to: 1 }, presence: true 
end

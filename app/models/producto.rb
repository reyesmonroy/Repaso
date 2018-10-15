class Producto < ApplicationRecord
  belongs_to :marca
  belongs_to :categoria

  validates_presence_of :codigo, :nombre, :costo, :ganancia
end

class Marca < ApplicationRecord
	validates_presence_of :nombre, :descripcion, :estado
end

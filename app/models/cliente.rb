class Cliente < ApplicationRecord
	validates_presence_of :nit, :nombre, :direccion
end

class Catalogo < ApplicationRecord
	validates_presence_of :titulo, :descripcion, :header_image, :uploads
	has_one_attached :header_image 
  	has_many_attached :uploads
end

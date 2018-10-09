json.extract! producto, :id, :codigo, :nombre, :marca_id, :categoria_id, :descripcion, :costo, :ganancia, :created_at, :updated_at
json.url producto_url(producto, format: :json)

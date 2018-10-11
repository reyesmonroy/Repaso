json.extract! catalogo, :id, :titulo, :descripcion, :created_at, :updated_at
json.url catalogo_url(catalogo, format: :json)

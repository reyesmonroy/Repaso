json.extract! cliente, :id, :nit, :nombre, :direccion, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)

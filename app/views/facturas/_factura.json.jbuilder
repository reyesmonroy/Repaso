json.extract! factura, :id, :fecha, :nit, :nombre, :total, :estado, :created_at, :updated_at
json.url factura_url(factura, format: :json)

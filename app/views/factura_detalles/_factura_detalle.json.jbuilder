json.extract! factura_detalle, :id, :factura_id, :cantidad, :producto_id, :precio, :total, :created_at, :updated_at
json.url factura_detalle_url(factura_detalle, format: :json)

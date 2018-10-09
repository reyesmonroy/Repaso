# json.partial! "productos/producto", producto: @producto
json.extract! @producto
json.producto do
	json.id @producto.id
	json.nombre @producto.nombre
	json.precio @producto.costo
end

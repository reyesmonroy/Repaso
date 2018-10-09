require 'test_helper'

class FacturaDetallesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @factura_detalle = factura_detalles(:one)
  end

  test "should get index" do
    get factura_detalles_url
    assert_response :success
  end

  test "should get new" do
    get new_factura_detalle_url
    assert_response :success
  end

  test "should create factura_detalle" do
    assert_difference('FacturaDetalle.count') do
      post factura_detalles_url, params: { factura_detalle: { cantidad: @factura_detalle.cantidad, factura_id: @factura_detalle.factura_id, precio: @factura_detalle.precio, producto_id: @factura_detalle.producto_id, total: @factura_detalle.total } }
    end

    assert_redirected_to factura_detalle_url(FacturaDetalle.last)
  end

  test "should show factura_detalle" do
    get factura_detalle_url(@factura_detalle)
    assert_response :success
  end

  test "should get edit" do
    get edit_factura_detalle_url(@factura_detalle)
    assert_response :success
  end

  test "should update factura_detalle" do
    patch factura_detalle_url(@factura_detalle), params: { factura_detalle: { cantidad: @factura_detalle.cantidad, factura_id: @factura_detalle.factura_id, precio: @factura_detalle.precio, producto_id: @factura_detalle.producto_id, total: @factura_detalle.total } }
    assert_redirected_to factura_detalle_url(@factura_detalle)
  end

  test "should destroy factura_detalle" do
    assert_difference('FacturaDetalle.count', -1) do
      delete factura_detalle_url(@factura_detalle)
    end

    assert_redirected_to factura_detalles_url
  end
end

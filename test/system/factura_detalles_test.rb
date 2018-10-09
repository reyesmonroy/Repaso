require "application_system_test_case"

class FacturaDetallesTest < ApplicationSystemTestCase
  setup do
    @factura_detalle = factura_detalles(:one)
  end

  test "visiting the index" do
    visit factura_detalles_url
    assert_selector "h1", text: "Factura Detalles"
  end

  test "creating a Factura detalle" do
    visit factura_detalles_url
    click_on "New Factura Detalle"

    fill_in "Cantidad", with: @factura_detalle.cantidad
    fill_in "Factura", with: @factura_detalle.factura_id
    fill_in "Precio", with: @factura_detalle.precio
    fill_in "Producto", with: @factura_detalle.producto_id
    fill_in "Total", with: @factura_detalle.total
    click_on "Create Factura detalle"

    assert_text "Factura detalle was successfully created"
    click_on "Back"
  end

  test "updating a Factura detalle" do
    visit factura_detalles_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @factura_detalle.cantidad
    fill_in "Factura", with: @factura_detalle.factura_id
    fill_in "Precio", with: @factura_detalle.precio
    fill_in "Producto", with: @factura_detalle.producto_id
    fill_in "Total", with: @factura_detalle.total
    click_on "Update Factura detalle"

    assert_text "Factura detalle was successfully updated"
    click_on "Back"
  end

  test "destroying a Factura detalle" do
    visit factura_detalles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Factura detalle was successfully destroyed"
  end
end

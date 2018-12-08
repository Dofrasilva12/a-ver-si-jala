require 'test_helper'

class OrdenesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordene = ordenes(:one)
  end

  test "should get index" do
    get ordenes_url, as: :json
    assert_response :success
  end

  test "should create ordene" do
    assert_difference('Ordene.count') do
      post ordenes_url, params: { ordene: { cantidad: @ordene.cantidad, cliente_id: @ordene.cliente_id, fecha: @ordene.fecha, numero_orden: @ordene.numero_orden, precio_venta: @ordene.precio_venta, producto_id: @ordene.producto_id } }, as: :json
    end

    assert_response 201
  end

  test "should show ordene" do
    get ordene_url(@ordene), as: :json
    assert_response :success
  end

  test "should update ordene" do
    patch ordene_url(@ordene), params: { ordene: { cantidad: @ordene.cantidad, cliente_id: @ordene.cliente_id, fecha: @ordene.fecha, numero_orden: @ordene.numero_orden, precio_venta: @ordene.precio_venta, producto_id: @ordene.producto_id } }, as: :json
    assert_response 200
  end

  test "should destroy ordene" do
    assert_difference('Ordene.count', -1) do
      delete ordene_url(@ordene), as: :json
    end

    assert_response 204
  end
end

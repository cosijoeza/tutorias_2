require 'test_helper'

class HistorialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historial = historials(:one)
  end

  test "should get index" do
    get historials_url
    assert_response :success
  end

  test "should get new" do
    get new_historial_url
    assert_response :success
  end

  test "should create historial" do
    assert_difference('Historial.count') do
      post historials_url, params: { historial: { alum_id: @historial.alum_id, calif_1: @historial.calif_1, calif_2: @historial.calif_2, calif_3: @historial.calif_3, esp: @historial.esp, ext_1: @historial.ext_1, ext_2: @historial.ext_2, final: @historial.final, mat_id: @historial.mat_id } }
    end

    assert_redirected_to historial_url(Historial.last)
  end

  test "should show historial" do
    get historial_url(@historial)
    assert_response :success
  end

  test "should get edit" do
    get edit_historial_url(@historial)
    assert_response :success
  end

  test "should update historial" do
    patch historial_url(@historial), params: { historial: { alum_id: @historial.alum_id, calif_1: @historial.calif_1, calif_2: @historial.calif_2, calif_3: @historial.calif_3, esp: @historial.esp, ext_1: @historial.ext_1, ext_2: @historial.ext_2, final: @historial.final, mat_id: @historial.mat_id } }
    assert_redirected_to historial_url(@historial)
  end

  test "should destroy historial" do
    assert_difference('Historial.count', -1) do
      delete historial_url(@historial)
    end

    assert_redirected_to historials_url
  end
end

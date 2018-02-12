require 'test_helper'

class MatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mat = mats(:one)
  end

  test "should get index" do
    get mats_url
    assert_response :success
  end

  test "should get new" do
    get new_mat_url
    assert_response :success
  end

  test "should create mat" do
    assert_difference('Mat.count') do
      post mats_url, params: { mat: { calif_1: @mat.calif_1, calif_2: @mat.calif_2, calif_3: @mat.calif_3, esp: @mat.esp, ext_1: @mat.ext_1, ext_2: @mat.ext_2, final: @mat.final, nombre: @mat.nombre, semestre: @mat.semestre } }
    end

    assert_redirected_to mat_url(Mat.last)
  end

  test "should show mat" do
    get mat_url(@mat)
    assert_response :success
  end

  test "should get edit" do
    get edit_mat_url(@mat)
    assert_response :success
  end

  test "should update mat" do
    patch mat_url(@mat), params: { mat: { calif_1: @mat.calif_1, calif_2: @mat.calif_2, calif_3: @mat.calif_3, esp: @mat.esp, ext_1: @mat.ext_1, ext_2: @mat.ext_2, final: @mat.final, nombre: @mat.nombre, semestre: @mat.semestre } }
    assert_redirected_to mat_url(@mat)
  end

  test "should destroy mat" do
    assert_difference('Mat.count', -1) do
      delete mat_url(@mat)
    end

    assert_redirected_to mats_url
  end
end

require 'test_helper'

class PrusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pru = prus(:one)
  end

  test "should get index" do
    get prus_url
    assert_response :success
  end

  test "should get new" do
    get new_pru_url
    assert_response :success
  end

  test "should create pru" do
    assert_difference('Pru.count') do
      post prus_url, params: { pru: { foto: @pru.foto } }
    end

    assert_redirected_to pru_url(Pru.last)
  end

  test "should show pru" do
    get pru_url(@pru)
    assert_response :success
  end

  test "should get edit" do
    get edit_pru_url(@pru)
    assert_response :success
  end

  test "should update pru" do
    patch pru_url(@pru), params: { pru: { foto: @pru.foto } }
    assert_redirected_to pru_url(@pru)
  end

  test "should destroy pru" do
    assert_difference('Pru.count', -1) do
      delete pru_url(@pru)
    end

    assert_redirected_to prus_url
  end
end

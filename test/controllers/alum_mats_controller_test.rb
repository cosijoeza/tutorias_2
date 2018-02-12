require 'test_helper'

class AlumMatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alum_mat = alum_mats(:one)
  end

  test "should get index" do
    get alum_mats_url
    assert_response :success
  end

  test "should get new" do
    get new_alum_mat_url
    assert_response :success
  end

  test "should create alum_mat" do
    assert_difference('AlumMat.count') do
      post alum_mats_url, params: { alum_mat: { alum_id: @alum_mat.alum_id, mat_id: @alum_mat.mat_id } }
    end

    assert_redirected_to alum_mat_url(AlumMat.last)
  end

  test "should show alum_mat" do
    get alum_mat_url(@alum_mat)
    assert_response :success
  end

  test "should get edit" do
    get edit_alum_mat_url(@alum_mat)
    assert_response :success
  end

  test "should update alum_mat" do
    patch alum_mat_url(@alum_mat), params: { alum_mat: { alum_id: @alum_mat.alum_id, mat_id: @alum_mat.mat_id } }
    assert_redirected_to alum_mat_url(@alum_mat)
  end

  test "should destroy alum_mat" do
    assert_difference('AlumMat.count', -1) do
      delete alum_mat_url(@alum_mat)
    end

    assert_redirected_to alum_mats_url
  end
end

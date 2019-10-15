require 'test_helper'

class ConpaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conpany = conpanies(:one)
  end

  test "should get index" do
    get conpanies_url
    assert_response :success
  end

  test "should get new" do
    get new_conpany_url
    assert_response :success
  end

  test "should create conpany" do
    assert_difference('Conpany.count') do
      post conpanies_url, params: { conpany: { name: @conpany.name } }
    end

    assert_redirected_to conpany_url(Conpany.last)
  end

  test "should show conpany" do
    get conpany_url(@conpany)
    assert_response :success
  end

  test "should get edit" do
    get edit_conpany_url(@conpany)
    assert_response :success
  end

  test "should update conpany" do
    patch conpany_url(@conpany), params: { conpany: { name: @conpany.name } }
    assert_redirected_to conpany_url(@conpany)
  end

  test "should destroy conpany" do
    assert_difference('Conpany.count', -1) do
      delete conpany_url(@conpany)
    end

    assert_redirected_to conpanies_url
  end
end

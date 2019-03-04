require 'test_helper'

class FootsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foot = foots(:one)
  end

  test "should get index" do
    get foots_url
    assert_response :success
  end

  test "should get new" do
    get new_foot_url
    assert_response :success
  end

  test "should create foot" do
    assert_difference('Foot.count') do
      post foots_url, params: { foot: { date_entry: @foot.date_entry, number: @foot.number } }
    end

    assert_redirected_to foot_url(Foot.last)
  end

  test "should show foot" do
    get foot_url(@foot)
    assert_response :success
  end

  test "should get edit" do
    get edit_foot_url(@foot)
    assert_response :success
  end

  test "should update foot" do
    patch foot_url(@foot), params: { foot: { date_entry: @foot.date_entry, number: @foot.number } }
    assert_redirected_to foot_url(@foot)
  end

  test "should destroy foot" do
    assert_difference('Foot.count', -1) do
      delete foot_url(@foot)
    end

    assert_redirected_to foots_url
  end
end

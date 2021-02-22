require 'test_helper'

class TryingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trying = tryings(:one)
  end

  test "should get index" do
    get tryings_url
    assert_response :success
  end

  test "should get new" do
    get new_trying_url
    assert_response :success
  end

  test "should create trying" do
    assert_difference('Trying.count') do
      post tryings_url, params: { trying: { one: @trying.one, three: @trying.three, two: @trying.two } }
    end

    assert_redirected_to trying_url(Trying.last)
  end

  test "should show trying" do
    get trying_url(@trying)
    assert_response :success
  end

  test "should get edit" do
    get edit_trying_url(@trying)
    assert_response :success
  end

  test "should update trying" do
    patch trying_url(@trying), params: { trying: { one: @trying.one, three: @trying.three, two: @trying.two } }
    assert_redirected_to trying_url(@trying)
  end

  test "should destroy trying" do
    assert_difference('Trying.count', -1) do
      delete trying_url(@trying)
    end

    assert_redirected_to tryings_url
  end
end

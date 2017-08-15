require 'test_helper'

class MysitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mysite = mysites(:one)
  end

  test "should get index" do
    get mysites_url
    assert_response :success
  end

  test "should get new" do
    get new_mysite_url
    assert_response :success
  end

  test "should create mysite" do
    assert_difference('Mysite.count') do
      post mysites_url, params: { mysite: { name: @mysite.name, website: @mysite.website } }
    end

    assert_redirected_to mysite_url(Mysite.last)
  end

  test "should show mysite" do
    get mysite_url(@mysite)
    assert_response :success
  end

  test "should get edit" do
    get edit_mysite_url(@mysite)
    assert_response :success
  end

  test "should update mysite" do
    patch mysite_url(@mysite), params: { mysite: { name: @mysite.name, website: @mysite.website } }
    assert_redirected_to mysite_url(@mysite)
  end

  test "should destroy mysite" do
    assert_difference('Mysite.count', -1) do
      delete mysite_url(@mysite)
    end

    assert_redirected_to mysites_url
  end
end

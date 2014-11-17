require 'test_helper'

class Admin::HeadersControllerTest < ActionController::TestCase
  setup do
    @admin_header = admin_headers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_headers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_header" do
    assert_difference('Admin::Header.count') do
      post :create, admin_header: { facebook: @admin_header.facebook, google: @admin_header.google, linkedin: @admin_header.linkedin, name: @admin_header.name, twitter: @admin_header.twitter }
    end

    assert_redirected_to admin_header_path(assigns(:admin_header))
  end

  test "should show admin_header" do
    get :show, id: @admin_header
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_header
    assert_response :success
  end

  test "should update admin_header" do
    patch :update, id: @admin_header, admin_header: { facebook: @admin_header.facebook, google: @admin_header.google, linkedin: @admin_header.linkedin, name: @admin_header.name, twitter: @admin_header.twitter }
    assert_redirected_to admin_header_path(assigns(:admin_header))
  end

  test "should destroy admin_header" do
    assert_difference('Admin::Header.count', -1) do
      delete :destroy, id: @admin_header
    end

    assert_redirected_to admin_headers_path
  end
end

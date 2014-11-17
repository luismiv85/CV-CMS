require 'test_helper'

class Admin::PresentsControllerTest < ActionController::TestCase
  setup do
    @admin_present = admin_presents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_presents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_present" do
    assert_difference('Admin::Present.count') do
      post :create, admin_present: { : @admin_present. }
    end

    assert_redirected_to admin_present_path(assigns(:admin_present))
  end

  test "should show admin_present" do
    get :show, id: @admin_present
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_present
    assert_response :success
  end

  test "should update admin_present" do
    patch :update, id: @admin_present, admin_present: { : @admin_present. }
    assert_redirected_to admin_present_path(assigns(:admin_present))
  end

  test "should destroy admin_present" do
    assert_difference('Admin::Present.count', -1) do
      delete :destroy, id: @admin_present
    end

    assert_redirected_to admin_presents_path
  end
end

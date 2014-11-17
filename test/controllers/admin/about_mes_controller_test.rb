require 'test_helper'

class Admin::AboutMesControllerTest < ActionController::TestCase
  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get _form" do
    get :_form
    assert_response :success
  end

end

require 'test_helper'

class SublinesControllerTest < ActionController::TestCase
  setup do
    @subline = sublines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sublines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subline" do
    assert_difference('Subline.count') do
      post :create, subline: { code: @subline.code, description: @subline.description, enable: @subline.enable, line_id: @subline.line_id, name: @subline.name }
    end

    assert_redirected_to subline_path(assigns(:subline))
  end

  test "should show subline" do
    get :show, id: @subline
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subline
    assert_response :success
  end

  test "should update subline" do
    patch :update, id: @subline, subline: { code: @subline.code, description: @subline.description, enable: @subline.enable, line_id: @subline.line_id, name: @subline.name }
    assert_redirected_to subline_path(assigns(:subline))
  end

  test "should destroy subline" do
    assert_difference('Subline.count', -1) do
      delete :destroy, id: @subline
    end

    assert_redirected_to sublines_path
  end
end

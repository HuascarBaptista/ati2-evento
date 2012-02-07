require 'test_helper'

class Eventos2sControllerTest < ActionController::TestCase
  setup do
    @eventos2 = eventos2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eventos2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eventos2" do
    assert_difference('Eventos2.count') do
      post :create, eventos2: @eventos2.attributes
    end

    assert_redirected_to eventos2_path(assigns(:eventos2))
  end

  test "should show eventos2" do
    get :show, id: @eventos2.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eventos2.to_param
    assert_response :success
  end

  test "should update eventos2" do
    put :update, id: @eventos2.to_param, eventos2: @eventos2.attributes
    assert_redirected_to eventos2_path(assigns(:eventos2))
  end

  test "should destroy eventos2" do
    assert_difference('Eventos2.count', -1) do
      delete :destroy, id: @eventos2.to_param
    end

    assert_redirected_to eventos2s_path
  end
end

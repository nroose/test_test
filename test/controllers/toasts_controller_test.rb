require 'test_helper'

class ToastsControllerTest < ActionController::TestCase
  setup do
    @toast = toasts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:toasts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toast" do
    assert_difference('Toast.count') do
      post :create, toast: {  }
    end

    assert_redirected_to toast_path(assigns(:toast))
  end

  test "should show toast" do
    get :show, id: @toast
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @toast
    assert_response :success
  end

  test "should update toast" do
    patch :update, id: @toast, toast: {  }
    assert_redirected_to toast_path(assigns(:toast))
  end

  test "should destroy toast" do
    assert_difference('Toast.count', -1) do
      delete :destroy, id: @toast
    end

    assert_redirected_to toasts_path
  end
end

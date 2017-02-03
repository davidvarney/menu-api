require 'test_helper'

class ExtrasControllerTest < ActionController::TestCase
  setup do
    @extra = extras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:extras)
  end

  test "should create extra" do
    assert_difference('Extra.count') do
      post :create, extra: { name: @extra.name, price: @extra.price }
    end

    assert_response 201
  end

  test "should show extra" do
    get :show, id: @extra
    assert_response :success
  end

  test "should update extra" do
    put :update, id: @extra, extra: { name: @extra.name, price: @extra.price }
    assert_response 204
  end

  test "should destroy extra" do
    assert_difference('Extra.count', -1) do
      delete :destroy, id: @extra
    end

    assert_response 204
  end
end

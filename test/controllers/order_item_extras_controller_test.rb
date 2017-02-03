require 'test_helper'

class OrderItemExtrasControllerTest < ActionController::TestCase
  setup do
    @order_item_extra = order_item_extras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_item_extras)
  end

  test "should create order_item_extra" do
    assert_difference('OrderItemExtra.count') do
      post :create, order_item_extra: { extra_id: @order_item_extra.extra_id, order_item_id: @order_item_extra.order_item_id, quantity: @order_item_extra.quantity }
    end

    assert_response 201
  end

  test "should show order_item_extra" do
    get :show, id: @order_item_extra
    assert_response :success
  end

  test "should update order_item_extra" do
    put :update, id: @order_item_extra, order_item_extra: { extra_id: @order_item_extra.extra_id, order_item_id: @order_item_extra.order_item_id, quantity: @order_item_extra.quantity }
    assert_response 204
  end

  test "should destroy order_item_extra" do
    assert_difference('OrderItemExtra.count', -1) do
      delete :destroy, id: @order_item_extra
    end

    assert_response 204
  end
end

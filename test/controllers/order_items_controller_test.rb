require 'test_helper'

class OrderItemsControllerTest < ActionController::TestCase
  setup do
    @order_item = order_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_items)
  end

  test "should create order_item" do
    assert_difference('OrderItem.count') do
      post :create, order_item: { item_id: @order_item.item_id, order_id: @order_item.order_id, size_id: @order_item.size_id }
    end

    assert_response 201
  end

  test "should show order_item" do
    get :show, id: @order_item
    assert_response :success
  end

  test "should update order_item" do
    put :update, id: @order_item, order_item: { item_id: @order_item.item_id, order_id: @order_item.order_id, size_id: @order_item.size_id }
    assert_response 204
  end

  test "should destroy order_item" do
    assert_difference('OrderItem.count', -1) do
      delete :destroy, id: @order_item
    end

    assert_response 204
  end
end

class OrderItemExtrasController < ApplicationController
  before_action :set_order_item_extra, only: [:show, :update, :destroy]

  # GET /order_item_extras
  # GET /order_item_extras.json
  def index
    @order_item_extras = OrderItemExtra.all

    render json: @order_item_extras
  end

  # GET /order_item_extras/1
  # GET /order_item_extras/1.json
  def show
    render json: @order_item_extra
  end

  # POST /order_item_extras
  # POST /order_item_extras.json
  def create
    @order_item_extra = OrderItemExtra.new(order_item_extra_params)

    if @order_item_extra.save
      render json: @order_item_extra, status: :created, location: @order_item_extra
    else
      render json: @order_item_extra.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /order_item_extras/1
  # PATCH/PUT /order_item_extras/1.json
  def update
    @order_item_extra = OrderItemExtra.find(params[:id])

    if @order_item_extra.update(order_item_extra_params)
      head :no_content
    else
      render json: @order_item_extra.errors, status: :unprocessable_entity
    end
  end

  # DELETE /order_item_extras/1
  # DELETE /order_item_extras/1.json
  def destroy
    @order_item_extra.destroy

    head :no_content
  end

  private

    def set_order_item_extra
      @order_item_extra = OrderItemExtra.find(params[:id])
    end

    def order_item_extra_params
      params.require(:order_item_extra).permit(:extra_id, :order_item_id, :quantity)
    end
end

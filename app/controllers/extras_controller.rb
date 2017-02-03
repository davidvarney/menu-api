class ExtrasController < ApplicationController
  before_action :set_extra, only: [:show, :update, :destroy]

  # GET /extras
  # GET /extras.json
  def index
    @extras = Extra.all

    render json: @extras
  end

  # GET /extras/1
  # GET /extras/1.json
  def show
    render json: @extra
  end

  # POST /extras
  # POST /extras.json
  def create
    @extra = Extra.new(extra_params)

    if @extra.save
      render json: @extra, status: :created, location: @extra
    else
      render json: @extra.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /extras/1
  # PATCH/PUT /extras/1.json
  def update
    @extra = Extra.find(params[:id])

    if @extra.update(extra_params)
      head :no_content
    else
      render json: @extra.errors, status: :unprocessable_entity
    end
  end

  # DELETE /extras/1
  # DELETE /extras/1.json
  def destroy
    @extra.destroy

    head :no_content
  end

  private

    def set_extra
      @extra = Extra.find(params[:id])
    end

    def extra_params
      params.require(:extra).permit(:name, :price)
    end
end

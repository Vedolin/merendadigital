class PreparationsController < ApplicationController
  before_action :set_preparation, only: [:show, :update, :destroy]

  # GET /preparations
  def index
    @preparations = Preparation.all

    render json: @preparations
  end

  # GET /preparations/1
  def show
    render json: @preparation
  end

  # POST /preparations
  def create
    @preparation = Preparation.new(preparation_params)

    if @preparation.save
      render json: @preparation, status: :created, location: @preparation
    else
      render json: @preparation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /preparations/1
  def update
    if @preparation.update(preparation_params)
      render json: @preparation
    else
      render json: @preparation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /preparations/1
  def destroy
    @preparation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preparation
      @preparation = Preparation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def preparation_params
      params.require(:preparation).permit(:name, :description, :ingredient_id)
    end
end

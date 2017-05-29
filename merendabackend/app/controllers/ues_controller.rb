class UesController < ApplicationController
  before_action :set_ue, only: [:show, :update, :destroy]

  # GET /ues
  def index
    @ues = Ue.all

    render json: @ues
  end

  # GET /ues/1
  def show
    render json: @ue
  end

  # POST /ues
  def create
    @ue = Ue.new(ue_params)

    if @ue.save
      render json: @ue, status: :created, location: @ue
    else
      render json: @ue.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ues/1
  def update
    if @ue.update(ue_params)
      render json: @ue
    else
      render json: @ue.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ues/1
  def destroy
    @ue.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ue
      @ue = Ue.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ue_params
      params.require(:ue).permit(:name)
    end
end

class AudiencesController < ApplicationController
  before_action :set_audience, only: [:show, :update, :destroy]

  # GET /audiences
  def index
    @audiences = Audience.all

    render json: @audiences
  end

  # GET /audiences/1
  def show
    render json: @audience
  end

  # POST /audiences
  def create
    @audience = Audience.new(audience_params)

    if @audience.save
      render json: @audience, status: :created, location: @audience
    else
      render json: @audience.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /audiences/1
  def update
    if @audience.update(audience_params)
      render json: @audience
    else
      render json: @audience.errors, status: :unprocessable_entity
    end
  end

  # DELETE /audiences/1
  def destroy
    @audience.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audience
      @audience = Audience.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def audience_params
      params.require(:audience).permit(:name, :min_age, :max_age, :meal_id, :ue_id)
    end
end

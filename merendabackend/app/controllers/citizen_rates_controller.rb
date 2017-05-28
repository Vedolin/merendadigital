class CitizenRatesController < ApplicationController
  before_action :set_citizen_rate, only: [:show, :update, :destroy]

  # GET /citizen_rates
  def index
    @citizen_rates = CitizenRate.all

    render json: @citizen_rates
  end

  # GET /citizen_rates/1
  def show
    render json: @citizen_rate
  end

  # POST /citizen_rates
  def create
    @citizen_rate = CitizenRate.new(citizen_rate_params)

    if @citizen_rate.save
      render json: @citizen_rate, status: :created, location: @citizen_rate
    else
      render json: @citizen_rate.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /citizen_rates/1
  def update
    if @citizen_rate.update(citizen_rate_params)
      render json: @citizen_rate
    else
      render json: @citizen_rate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /citizen_rates/1
  def destroy
    @citizen_rate.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_citizen_rate
      @citizen_rate = CitizenRate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def citizen_rate_params
      params.require(:citizen_rate).permit(:stars, :comment, :ue_id)
    end
end

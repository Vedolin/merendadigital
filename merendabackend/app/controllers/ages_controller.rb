class AgesController < ApplicationController
  before_action :set_age, only: [:show, :update, :destroy]

  # GET /ages
  def index
    @ages = Age.all

    render json: @ages
  end

  # GET /ages/1
  def show
    render json: @age
  end

  # POST /ages
  def create
    @age = Age.new(age_params)

    if @age.save
      render json: @age, status: :created, location: @age
    else
      render json: @age.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ages/1
  def update
    if @age.update(age_params)
      render json: @age
    else
      render json: @age.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ages/1
  def destroy
    @age.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_age
      @age = Age.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def age_params
      params.require(:age).permit(:name)
    end
end

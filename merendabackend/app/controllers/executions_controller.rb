class ExecutionsController < ApplicationController
  before_action :set_execution, only: [:show, :update, :destroy]

  # GET /executions
  def index
    @executions = Execution.all

    render json: @executions
  end

  # GET /executions/1
  def show
    render json: @execution
  end

  # POST /executions
  def create
    @execution = Execution.new(execution_params)

    if @execution.save
      render json: @execution, status: :created, location: @execution
    else
      render json: @execution.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /executions/1
  def update
    if @execution.update(execution_params)
      render json: @execution
    else
      render json: @execution.errors, status: :unprocessable_entity
    end
  end

  # DELETE /executions/1
  def destroy
    @execution.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_execution
      @execution = Execution.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def execution_params
      params.require(:execution).permit(:name)
    end
end

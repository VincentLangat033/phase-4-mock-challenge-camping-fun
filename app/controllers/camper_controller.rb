class CamperController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  def index
    campers = Camper.all 
    render json: campers
  end

  def show
    campers = Camper.find(params[:id])
    render json: campers, include: ['activities']
  end
  def create
    camper = Camper.create(camper_params)
    render json: camper

  end
  private

  def camper_params
    params.premit(:name, :age)
  end

  def render_not_found_response
    render json: { error: "Camper not found" }, status: :not_found
  end
end

class ActivityController < ApplicationController
  def index
    activities = Activity.all 
    render json: activities
  end
  def destroy
    activity = Activity.find(params[:id])
    activity.destroy
    head :no_content
  end
end

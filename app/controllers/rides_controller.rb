class RidesController < ApplicationController

  def new
  end

  def create
    ride = Ride.create(start: params[:start_location],
                       destination: params[:start_location],
                       time: params[:start_location],
                       seats_left: params[:start_location])
    redirect_to user_path(current_user)
  end
  def list_start
    @start = Ride.all.order(:start).where("start like ?", "%#{params[:term]}%")
    render json: @start
  end
end

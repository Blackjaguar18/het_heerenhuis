class HourRegistrationsController < ApplicationController

  def index
    @hour_registrations = HourRegistration.where(user: current_user)
  end

  def new
    @hour_registration = HourRegistration.new
  end

  def create
    @hour_registration = HourRegistration.new(hour_registration_params)
    @hour_registration.user_id = current_user.id

    if @hour_registration.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  private

  def hour_registration_params
    params.require(:hour_registration).permit(:start_time, :end_time, :small_break, :big_break, :working_hours)
  end
end

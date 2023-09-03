class AppointmentsController < ApplicationController

  def index
    @appointments = current_user.appointments
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = current_user.appointments.new(appointment_params)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:id, :doctor, :schedule_time)
  end
end

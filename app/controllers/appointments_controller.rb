class AppointmentsController < ApplicationController

  def index
    @appointments = current_user.appointments
  end

  def new
    @appointment = current_user.appointments.new
  end

  def create
    @appointment = current_user.appointments.new(appointment_params)
    if @appointment.save
      redirect_to appointments_path, success: 'Your appointment successfully scheduled!'
    else 
      render :new, error: 'Something went wrong. Please, try again!'
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  private

  def appointment_params
    params.require(:appointment).permit(:patient_id, :doctor_id, :status, :schedule_time, :recommendation)
  end
end

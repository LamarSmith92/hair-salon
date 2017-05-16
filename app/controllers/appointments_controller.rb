class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  def index
    @appointments = Appointment.where(user_id: current_user.id)
    if @appointments.length == 0
      flash[:alert] = "You have no appointments. Create one now to get started."
    end
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user_id = current_user.id
    if @appointment.save
      flash[:success] = "Your Appointment has been set !"
      redirect_to appointments_path
    else
      render 'new'
    end
  end


  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:date, :first_name, :last_name, :phone, :email, :notes, )
  end
end

class AppointmentsController < ApplicationController

  before_action :set_appointment, only: [:show, :edit, :update, :destroy]


  def index
    @appointments = Appointment.all
    if @appointments.length == 0
      flash[:alert] = "You have no appointments. Create one now to get started."
    end
  end

  def new
    @appointment = Appointment.new
  end

  def create
  
  @appointment = Appointment.new(appointment_params)

      if @appointment.save
        flash[:success] = "Your Appointment has been set for" + @date
      redirect_to root_path
    else
  render 'new'

end

end

  def show
    @appointment = Appointment.find(params[:id])
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
    params.require(:appointment).permit(:date, :first_name, :last_name, :phone, :email, :notes)
end
end

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

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to @appointment, notice: 'Appointment was successfully created.' }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
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
  # Use callbacks to share common setup or constraints between actions.
  # See above ---> before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:date, :first_name, :last_name, :phone, :email, :notes)
end
end

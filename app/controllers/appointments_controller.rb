class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
    @terapists = Terapist.all
  end

  def create
    @appointment_params = params.require(:appointment).permit(:date, :hour, :terapist_id).merge(user_id: current_user.id)
    @appointment = Appointment.create(@appointment_params)
    if @appointment.save
      redirect_to root_path, notice: 'Cita agendada exitosamente'
    else
      redirect_to root_path, notice: 'Ha ocurrido un error en el agendamiento'
    end
  end

  def index
    @appointments = Appointment.where(:user_id => current_user.id)
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def delete
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to root_path
  end
end

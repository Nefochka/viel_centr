class AppointmentsController < ApplicationController


  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy

  def new
    @appointment=Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      AppointmentsMailer.ordered_to_client(@appointment).deliver
      AppointmentsMailer.ordered_to_admin(@appointment).deliver
      redirect_to @appointment
    else
      render 'new'
    end

  end 

  def show
    @appointment = Appointment.find(params[:id])
  end

  def appointment_list
     @appointment_list=Appointment.all
  end

  private

    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    def appointment_params
      params.require(:appointment).permit(:name, :phone, :bell, :email, :procedure, :specialist, :date, :time)
    end             


end

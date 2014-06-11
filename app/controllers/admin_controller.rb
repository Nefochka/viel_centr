class AdminController < ApplicationController

  before_filter :require_admin

  def admin_page
    @current_use = current_user
  end

  def appointment_list
    @appointment_list=Appointment.all
  end

  def admin_appointments
    @current_use = current_user
    @appointment_list=Appointment.all
  end

  def admin_gifts
    @current_use = current_user
    @gifts_list=GiftCertificate.all
  end

  def admin_users
    @current_use = current_user
    @user_list=User.all
  end

  def admin_feedbacks
    @current_use = current_user
    @feedbacks_list=Feedback.all
  end

  def destroy
    
  end

end

class AppointmentsMailer < ActionMailer::Base
  default :from => "parshukova.elena@gmail.com"
  
  def ordered_to_client(appointment)
    @appointment = appointment
#    attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "#{appointment.name} <#{appointment.email}>", :subject => "Центр Виэль.Заявка на процедуру")
  end

  def ordered_to_admin(appointment)
    @appointment = appointment
#    attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "admin <parshukova.elena@gmail.com>", :subject => "Заявка на процедуру")
  end

end

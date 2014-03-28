class AppointmentsMailer < ActionMailer::Base
  default :from => "viel-centr@rambler.ru"
  
  def ordered_to_client(appointment)
    @appointment = appointment
#    attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "#{appointment.name} <#{appointment.email}>", :subject => "Центр Виэль.Заявка на процедуру")
  end

  def ordered_to_admin(appointment)
    @appointment = appointment
#    attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "admin <viel-centr@rambler.ru>", :subject => "Заявка на процедуру")
  end

end

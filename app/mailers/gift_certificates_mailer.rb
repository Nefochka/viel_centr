class Gift_certificatesMailer < ActionMailer::Base
  default :from => "parshukova.elena@gmail.com"
  
  def ordered_to_client(gift_certificate)
    @gift_certificate = gift_certificate
#    attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "#{gift_certificate.name} <#{gift_certificate.email}>", :subject => "Центр Виэль.Заявка на подарочный сертификат")
  end

  def ordered_to_admin(gift_certificate)
    @gift_certificate = gift_certificate
#    attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "admin <parshukova.elena@gmail.com>", :subject => "Заявка на подарочный сертификат")
  end


end

class UserMailer < ActionMailer::Base
  default :from => "parshukova.elena@gmail.com"
  
  def ordered(gift)
    @gift = gift
#    attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "#{gift.name} <#{gift.email}>", :subject => "Registered")
  end

  def delete_confirmation(user)
    @user = user
    mail(:to => "#{gift.name} <#{gift.email}>", :subject => "Deleted")
  end

end

class UserMailer < ActionMailer::Base

  default :from => "parshukova.elena@gmail.com", :reply_to => "parshukova.elena@gmail.com"
  def welcome(user)
    @user = user
    mail(
      :to => @user.email,
      :subject => 'Welcome',
      :date => Time.zone.now
    )
  end


#  default :from => "parshukova.elena@gmail.com"
  
#  def ordered(name, email)
#    @user = user
#    attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
#    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")
#    mail(:to => "#{name} <#{email}>", :subject => "Registered")
#  end



end

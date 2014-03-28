class UsersMailer < ActionMailer::Base
  default :from => "viel-centr@rambler.ru"
  
  def registered(user)
    @user = user
#    attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Центр Виэль. Регистрация")
  end

  def ordered_to_admin(user)
    @user = user
#    attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "admin <viel-centr@rambler.ru>", :subject => "Регистрация нового пользователя")
  end

end

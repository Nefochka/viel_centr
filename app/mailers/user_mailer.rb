class UserMailer < ActionMailer::Base

  default from: 'parshukova.elena@gmail.com'
 
  def welcome_email
##    @user = user
##    @url  = 'http://example.com/login'
##    mail(to: @user.email, subject: 'Welcome to Viel-centr.ru Site')
    mail(to: 'nefirtity@mail.ru', subject: 'Welcome to Viel-centr.ru Site')
  end
end

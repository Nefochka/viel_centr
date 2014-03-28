ActionMailer::Base.smtp_settings = {
  :address => "smtp.rambler.ru",
  :port => 587,
  :domain => "rambler.ru",
  :user_name => "viel-centr",
  :password => "vielcentr",
  :authentication => "plain",
  :enable_starttls_auto => true
}

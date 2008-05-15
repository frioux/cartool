ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => "mail.cartool.afoolishmanifesto.com",
  :port => 25,
  :domain => "cartool.afoolishmanifesto.com",
  :authentication => :login,
  :user_name => "mail@cartool.afoolishmanifesto.com",
  :password => "test"
}



class AdminMailer < ActionMailer::Base
  default from: "groopify@groopify.com"

  def registration_email name, email
    @name = name
    @email = email
    mail(to: @email, subject: "Welcome to Ultimate Pet")
  end
end
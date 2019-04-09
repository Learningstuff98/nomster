class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomsterapp.com"

  def comment_added
    mail(to: "andystrube64@gmail.com",
        subject: "it works")    
  end

end
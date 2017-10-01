class NotificationMailer < ApplicationMailer

  default from: "no-reply@rendezvroomapp.com"

  def comment_added

    mail(to: "rendezvroomapp@gmail.com",

        subject:  "A comment has been added to your place!")

  end

end

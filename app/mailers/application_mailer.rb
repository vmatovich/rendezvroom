class ApplicationMailer < ActionMailer::Base
  
  default from: "no-reply@rendezvroomapp.com"
  
  layout 'mailer'
  
end
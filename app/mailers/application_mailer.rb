class ApplicationMailer < ActionMailer::Base
  default from: 'messages@mlouie.com'
  default to: 'mwq.louie@gmaill.com'

  def new_message(contact)
    @contact = contact
    mail subject: "Message from #{contact.name}"
  end
end

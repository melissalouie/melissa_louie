class Contact < MailForm::Base

  attribute :name,      :validate => true
  attribute :message,   :validate => true
  attribute :email

  def headers
    {
      :subject => "My Contact Form",
      :to => "mwq.louie@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end

end

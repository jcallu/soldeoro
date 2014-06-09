class Contact < MailForm::Base
  attributes :name,      :validate => true
  attributes :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :telephone,     :validate => true
  attributes :message
  attributes :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "BRS Nuevo Contacto",
      :to => ENV['GMAIL_SEND_TO'],
      :body => %(Name: #{name}\n\nEmail: #{email}\n\nPhone: #{telephone}\n\nMessage: #{message}) 
    }
  end
end

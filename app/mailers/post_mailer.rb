class PostMailer < ApplicationMailer

  default from: 'notifications@example.com'

  def post_created
    @greeting = "Olá"
    mail from: "support@support.com", to: User.all, bcc: "secret@secret.com", subject: "New post created"
  end

end

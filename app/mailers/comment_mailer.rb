class CommentMailer < ApplicationMailer

  default from: 'notifications@example.com'

  def comment_moderated(comment_id)
    comment = Comment.find(comment_id)
    @user = comment.user
    @greeting = "Olá"
    mail from: "support@support.com", to: @user.email, subject: "Notification about your comment"
  end

end
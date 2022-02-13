class CommentsController < ApplicationController

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to @commentable, notice: 'The comment has been created and will be posted after admin approval.'
  end

  private

    def comment_params
      params.require(:comment).permit(:body, :approved)
    end

end

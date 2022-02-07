class CommentsController < ApplicationController

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to @commentable, notice: 'Comment was created successfully posted.'
  end

  private

    def comment_params
      params.require(:comment).permit(:body)
    end

end
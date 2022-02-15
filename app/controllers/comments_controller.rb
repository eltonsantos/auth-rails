class CommentsController < ApplicationController

  def index
    @comments = Comment.where(approved: false, justify: nil)
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    respond_to do |format|
      if @comment.update(comment_params)
        CommentMailer.comment_moderated(@comment.id).deliver_later
        format.html { redirect_to comments_path, notice: "Comment was successfully updated." }
        format.json { render :index, status: :ok, location: @comment }
      else
        format.html { render :show, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to @commentable, notice: 'The comment has been created and will be posted after admin approval.'
  end


  private

    def comment_params
      params.require(:comment).permit(:body, :approved, :justify)
    end

end

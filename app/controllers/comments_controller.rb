class CommentsController < ApplicationController


  def index
    @comments = Comment.for_approvation
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    respond_to do |format|
      if @comment.update(comment_params)
        CommentMailer.comment_moderated(@comment.id).deliver_later
        format.html { redirect_to comments_path, notice: t('.success') }
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
    redirect_to @commentable, notice: t('.success')
  end

  def moderate_all
    @comments = Comment.edit_justify
  end

  def all_justify_moderation
    @params = params[:comment][:comment]
    byebug
    @params.keys.each do |c|
      @comm = Comment.find(c)

      @c = @comm.update(justify: @params[c][:justify])
    end
    
    redirect_to "/moderate_all", notice: "Justificativas atualizadas com sucesso"
  end

  private

    def comment_params
      params.require(:comment).permit(:body, :approved, :visible, :justify)
    end

end

class ModerationsController < InheritedResources::Base

  load_and_authorize_resource

  def index
    @comments = Comment.where(approved: false)
  end

  def show
    @comment = Comment.find(params[:comment_id])
  end

end

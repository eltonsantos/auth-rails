class Cars::CommentsController < CommentsController
  before_action :set_commentable

  private

    def set_commentable
      @commentable = Car.find(params[:car_id])
    end
end
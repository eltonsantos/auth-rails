class AuditiesController < ApplicationController
  
  load_and_authorize_resource

  def index
    @q = Audity.all.ransack(params[:q])
    @audities = @q.result
  end

  def show
  end

end

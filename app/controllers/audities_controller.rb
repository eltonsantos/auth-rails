class AuditiesController < ApplicationController
  
  load_and_authorize_resource

  def index
    @q = Audity.all.ransack(params[:q])
    @audities = @q.result.page(params[:page])
  end

  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "#{@audity.id}",
               template: "audities/show.html.erb",
               layout: "pdf.html"
      end
    end
  end

end
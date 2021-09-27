class HomeController < ApplicationController

  def index
  end

  def admin
    user = current_user
    authorize! :read, :admin if user.admin?
  end

  def supervisor
    user = current_user
    authorize! :read, :supervisor if user.supervisor?
  end

  def collaborator
    user = current_user
    authorize! :read, :collaborator if user.collaborator?
  end
end

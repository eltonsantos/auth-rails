class HomeController < ApplicationController

  def index
  end

  def admin
    authorize! :read, :admin if current_user.admin?
  end

  def supervisor
    authorize! :read, :supervisor if current_user.supervisor?
  end

  def collaborator
    authorize! :read, :collaborator if current_user.collaborator?
  end
end

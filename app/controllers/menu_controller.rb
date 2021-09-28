class MenuController < ApplicationController

  load_and_authorize_resource

  def admin
  end

  def supervisor
  end

  def collaborator
  end
end

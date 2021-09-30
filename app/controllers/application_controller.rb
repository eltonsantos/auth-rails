class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

	rescue_from CanCan::AccessDenied do |exception|
    # Para mostrar uma mensagem de alerta descomente as linhas abaixo
    flash[:notice] = exception.message
    redirect_to root_path
    # Para mostrar uma mensagem de alerta em uma linha de código descomente abaixo
    # redirect_to '/', :notice => exception.message
		# Para renderizar uma pagina 403 descomente abaixo
    # render :file => "#{Rails.root}/public/403.html", :status => 403, :layout => false
	end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :role])
    end
end

class ApplicationController < ActionController::Base
    include Pundit
    protect_from_forgery with: :exception
    before_action :authenticate_user!

    before_action :configure_permitted_parameters, if: :devise_controller?
  
    private
  
   

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
    end
  
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    def user_not_authorized
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
    end

    def check_admin
      if current_user.admin? || current_user.root?
        return true
      else
        flash[:notice] = "Must be admin"
        redirect_to(request.referrer || root_path)
      end
    end


  end

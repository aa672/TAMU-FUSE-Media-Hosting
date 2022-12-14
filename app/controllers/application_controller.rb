class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!

    before_action :configure_permitted_parameters, if: :devise_controller?
  
    private
  
   

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
    end
  

    def user_not_authorized
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
    end

    def check_admin
      if current_user.admin? || current_user.root?
        return true
      else
        flash[:alert] = "Must be admin to perform that action."
        redirect_to(root_path)
      end
    end

    def check_root
      if current_user.root?
        return true
      else
        flash[:alert] = "Must be root to perform that action."
        redirect_to(root_path)
      end
    end


  end

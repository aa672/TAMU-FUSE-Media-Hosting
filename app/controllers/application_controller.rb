class ApplicationController < ActionController::Base
    def require_password_verification
        unless cookies[:user_password_verified]
          return redirect_to new_password_path
        end
      end
    
    def admin_password_verification
      unless session[:user_type] == "admin"
        return redirect_back(fallback_location: root_path, alert: 'Admin permission required to perform action.')
      end
    end

end

class ApplicationController < ActionController::Base
    def require_password_verification
        unless cookies[:user_password_verified]
          return redirect_to new_password_path
        end
      end

end

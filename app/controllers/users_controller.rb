class UsersController < ApplicationController
  
    before_action :authenticate_user!
    before_action :check_root
    def index
        @users = User.all
      end
    def show;
      @users = User.all
    end
    
    def edit
      @user = User.find(params[:id])
    end
   
    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to users_index_path
      else
        render 'edit'
      end
    end

    def destroy
      @user.destroy!
    
      respond_to do |format|
        format.json { respond_to_destroy(:ajax) }
        format.xml  { head :ok }
        format.html { respond_to_destroy(:html) }      
      end
    end
  
    private
  
    def user_params
      # NOTE: Using `strong_parameters` gem
      params.require(:user).permit(:password, :password_confirmation)
    end

    def allow_without_password
      if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
          params[:user].delete(:password)
          params[:user].delete(:password_confirmation)
      end
    end
  end
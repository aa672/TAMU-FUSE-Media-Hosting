class PasswordsController < ApplicationController
  def new
    # Nothing needed here because all your #new view needs is a password field
  end

  def create
    unless params[:password].present?
      return redirect_back(fallback_location: root_path, alert: 'Password is required.')
    end

    if params[:password] == Rails.configuration.user_password
      cookies[:user_password_verified] = true
      cookies.delete(:admin_password_verified)
      redirect_to(root_path, notice: 'Member password verified.')
    elsif params[:password] == Rails.configuration.admin_password
      cookies[:user_password_verified] = true
      cookies[:admin_password_verified] = true
      redirect_to(root_path, notice: 'Admin password verified.')
    else
      cookies.delete(:user_password_verified)
      cookies.delete(:admin_password_verified)
      redirect_back(fallback_location: root_path, alert: 'Incorrect password entered.')
    end
  end

  def edit
    unless params[:password].present?
      return redirect_back(fallback_location: root_path, alert: 'Password is required.')
    end

    if params[:password] == Rails.configuration.user_password
      cookies[:user_password_verified] = true
      cookies.delete(:admin_password_verified)
      session[:user_type] = "user"
      redirect_to(root_path, notice: 'Member password verified.')
    elsif params[:password] == Rails.configuration.admin_password
      cookies[:user_password_verified] = true
      cookies[:admin_password_verified] = true
      session[:user_type] = "admin"
      redirect_to(root_path, notice: 'Admin password verified.')
    else
      cookies.delete(:user_password_verified)
      cookies.delete(:admin_password_verified)
      session[:user_type] = "none"
      redirect_back(fallback_location: root_path, alert: 'Incorrect password entered.')
    end
  end
end

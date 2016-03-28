class SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    # if user && user.authenticate(params[:password])
    if user && (user.password_digest == params[:password])
      session[:current_user_id] = user.id
      if user.role == 'admin'
        redirect_to admins_path
      else
        redirect_to root_path
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_path
  end

end

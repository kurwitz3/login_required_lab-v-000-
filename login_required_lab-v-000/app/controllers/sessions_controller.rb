class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] != nil
      session[:name] = params[:name]
    end
    if session[:name] == nil || session[:name] == ''
      redirect_to login_path
    else 
      redirect_to root_path
    end
  end
  
  def show
  end

  def destroy
    if session[:name]
      session.delete :name
    end
  end
end

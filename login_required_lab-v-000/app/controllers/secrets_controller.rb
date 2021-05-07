class SecretsController < ApplicationController
  def new
  end

  def show
    if session[:name] == nil
      redirect_to login_path
    else
      session[:name]
    end
  end
end

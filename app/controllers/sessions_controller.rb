class SessionsController < ApplicationController
  def new
  end

  def create
    # binding.pry

      if params[:name] == nil || params[:name].empty?
        redirect_to '/login'
      else
        session[:name] = params[:name]
        redirect_to '/'
      end

  end

  def destroy
    # binding.pry
    session.delete :name
  end
end

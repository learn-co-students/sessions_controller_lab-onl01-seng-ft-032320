class SessionsController < ApplicationController

    def new 
    end 

    def create
        if params[:name].present?
            session[:name] = params[:name]
            redirect_to '/'
        else 
            params[:name] == nil || params[:name] == " "
            redirect_to '/login'
        end 
    end 

    def destroy
        session.delete :name
        if session[:name] = params[:uname]
            session[:name].clear 
            redirect_to '/'
        end 
    end 

end 
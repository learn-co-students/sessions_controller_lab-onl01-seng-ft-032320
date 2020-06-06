class SessionsController < ApplicationController 

    def new 

    end 

    def create 
        if session[:name] 
            redirect_to root_path
        elsif params[:name] 
            if params[:name].empty?
                redirect_to login_path
            else 
                session[:name] = params[:name]
                redirect_to root_path
            end
        else 
            redirect_to login_path
        end
    end 

    def destroy 
        session.delete :name
    end
end
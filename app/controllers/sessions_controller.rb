class SessionsController < ApplicationController
    def new 
       
        @user_id = params[:id]
    end

    def create
        member = Member.find_by(id:params[:id])
        if member.present? && member.authenticate(params[:password])
            session[:user] = member.id
            cookies.encrypted[:user] = member.id
            redirect_to account_path
        else
            flash[:notice] = "Please enter correct PIN"
            redirect_to root_path
        end
    end

    private
    def member_params
            params.require(:member).permit()
    end
end

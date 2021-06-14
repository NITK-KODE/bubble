class AccountController < ApplicationController
    before_action :require_login
    def index 
        @project = Project.all
        @test_var = "ans";
        @res = {anas:"lol"}
        respond_to do |format|
            format.html
        end
    end

    def setting

    end

    def pinchange
        user = Current.member
        if (user.authenticate(params[:oldpin]) && params[:newpin] == params[:newpinconfirmation])
            flash[:notice] = "Sucessfully changed pin"
            user.password = params[:newpin]
            user.password_confirmation = params[:newpinconfirmation]
            user.save
            redirect_to account_path

        else
            flash.now[:notice] = "Please try again"

            render :setting
        end
    end


    private 
    def member_params

    end

end

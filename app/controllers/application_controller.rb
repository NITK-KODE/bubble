class ApplicationController < ActionController::Base
    before_action :set_current_user
    


    def set_current_user
       if session[:user]
         Current.member = Member.find_by(id: session[:user])
       end
    end

    def require_login
        if Current.member
        else
            redirect_to root_path
        end
    end

end

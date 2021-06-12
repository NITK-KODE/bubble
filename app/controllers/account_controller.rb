class AccountController < ApplicationController
    before_action :require_login
    def index 
        @project = Project.all
    end


    private 
    def member_params

    end

end

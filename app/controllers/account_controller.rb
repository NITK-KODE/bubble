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

    def test
        @member = Member.all
        
    end


    private 
    def member_params

    end

end

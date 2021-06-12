class MainController < ApplicationController
    def index 
        @members = Member.all
    end
end

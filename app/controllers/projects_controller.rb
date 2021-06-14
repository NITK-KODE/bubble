class ProjectsController < ApplicationController
    def index
        @project = Project.find(params[:id])
        @message = Message.new
        @messages = Message.all
    end
end

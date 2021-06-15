class ProjectsController < ApplicationController
    def index
        @project = Project.find(params[:id])
        @message = Message.new
        @messages = Message.all
    end

    def new 
        @members = Member.all
        @project = Project.new
    end

    def create
        projects = Project.new(project_params)
        if projects.save
            redirect_to account_path
        else
            redirect_to root_path
        
        end
        
    end

    def destroy
        project = Project.find_by(id: params[:id])
        if project.destroy
            redirect_to account_path
        else
            flash[:notice] = "An error occured while deleting"
            redirect_to root_path
        end
    end
    private
    def project_params
        params.require(:project).permit(:name , :project_type , :deadline , member_ids:[])
    end
end

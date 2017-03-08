class ProjectsController < ApplicationController

  def new
  end

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:success] = "Successfully added the new project"
      redirect_to developer_url
    else
      flash[:error]="Failed at adding the new project"
      redirect_to :back
    end
  end

  private

  def project_params
    params.require(:project).permit(:name,:desc,:deadline)
  end
end

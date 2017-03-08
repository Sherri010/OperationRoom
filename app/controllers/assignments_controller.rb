class AssignmentsController < ApplicationController

  def index
    @assigns = Assignment.all
    @assign_detail = []
    @assigns.each do |a|
      h = {:developer=> Developer.find(a.developer_id), :project=> Project.find(a.project_id)}
      @assign_detail.push(h)
    end
  end

  def show
    @project = Project.find(params[:id])
    @devs = @project.developers
  end

  def new
    @assign = Assignment.new
    @all_devs = Developer.all
    @project = Project.find(params[:project_id])
    @assign_devs = @project.developers
  end


  def create
    @assign= Assignment.new(assign_params)
    if @assign.save
       flash[:success]="New assignment created"
       redirect_to devsassigned_path(@assign.project_id)
     else
       flash[:error]="Failed creating the assignment"
       redirect_to :back
     end
  end

  private

  def assign_params
    params.require(:assignment).permit(:developer_id,:project_id)
  end

end

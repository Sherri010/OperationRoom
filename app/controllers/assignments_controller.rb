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
    @assign = Assignment.where(project_id:params[:id])
    @project = Project.find(params[:id])
    @devs =[]
    @assign.each do |a|
      @devs << Developer.find(a.developer.id)
    end

  end

end

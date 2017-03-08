class DevelopersController < ApplicationController


  def new
    @dev = Developer.new
  end
  def create
      @dev = Developer.new(developer_params)
      if @dev.save
        flash[:success]="New member added"
        redirect_to developers_url
      else
        flash[:error]="Fialed adding new member ... please try again"
        redirect_to :back
      end
  end
  def index
    @devs = params[:project_id] ? Project.find(params[:project_id]).developers : Developer.all
  end

  def show
     @dev = Developer.find(params[:id])
     assignments = Assignment.where(developer_id:@dev.id)
     @projects =[]
     assignments.each do |assign|
       @projects << Project.find(assign.project_id)
     end
  end

  def edit
     @dev = Developer.find(params[:id])
  end

  def update
    @dev = Developer.find(params[:id])
    @dev.update_attributes(developer_params)
    if @dev.save
      flash[:success] = "Successful update"
      redirect_to developers_url
    else
      flash[:error] = "Failed update...please try again"
      redirect_to :back
    end
  end

  def destroy
    @dev= Developer.find(params[:id])
    if @dev.destroy
      flash[:success]="Successfully removed developer from the team"
      redirect_to developers_url
    else
      flash[:error]="failed removing developer from the team... please try again"
      redirect_to :back
    end
  end


  private

  def developer_params
    params.require(:developer).permit(:first_name, :last_name, :email , :years_experience)
  end


end

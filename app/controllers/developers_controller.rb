class DevelopersController < ApplicationController

  def index
    @devs = Developer.all
  end

  def show
   @dev = Developer.find(params[:id])
  end

  def edit
    
  end

  def update
  end

  def destroy
  end

end

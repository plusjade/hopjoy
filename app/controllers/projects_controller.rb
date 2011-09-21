class ProjectsController < ApplicationController
  
  def show
    @project = Project.find_by_slug!(params[:slug])
    @environment = @project.environment
  end

  def lesson
    @project = Project.find_by_slug!(params[:slug])
  end

  
end

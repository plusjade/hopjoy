class EnvironmentsController < ApplicationController

  def index
    @intro = Intro.new("web-application-environment")
    @environments = Environment.all
  end
  
  def show
    @environment = Environment.find_by_slug!(params[:id])
  end
  
end

class EnvironmentsController < ApplicationController

  def index
    @intro = Environment.new(:slug => "web-application-environment")
    @environments = Environment.all
  end
  
  def show
    @environment = Environment.find_by_slug!(params[:id])
  end
  
end

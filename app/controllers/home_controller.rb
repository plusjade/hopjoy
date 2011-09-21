class HomeController < ApplicationController

  def index 
    @environments = Environment.all
    @languages = Language.all
  end
  
  def about
  
  end
  
  def environments
    @intro = Page.get("web-applications-intro")
    @environments = Environment.all
    @environment = Environment.find_by_slug(params[:slug])
  end
  
  def languages    
    @language = Language.find_by_name!(params[:slug])
    if params[:environment]
      @environment = Environment.find_by_slug(params[:environment])
    end
  end
end

class HomeController < ApplicationController

  def index 
    @environments = Environment.all
    @languages = Language.all
    
    @intro = Page.get("intro")
  end
  
  def about
  
  end
    
  def languages    
    @language = Language.find_by_name!(params[:slug])
  end
  
  def language_environment
    @language = Language.find_by_name!(params[:slug])
    @environment = @language.environments.find_by_slug!(params[:environment])
  end
  
end

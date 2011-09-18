class HomeController < ApplicationController

  def index 

  end
  
  def about
  
  end
  
  def environments
    @intro = Page.get("web-applications-intro")

    @environment = Environment.find_by_slug!(params[:slug])
  end
  
  def languages    
    @language = Language.find_by_name!(params[:slug])
  end
end

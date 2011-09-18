class HomeController < ApplicationController

  def index 

  end
  
  def about
  
  end
  
  def environments
    @environment = Page.find_by_slug!(params[:slug])
  end
  
  def language
    @language = Page.find_by_slug!(params[:slug])
  end
end

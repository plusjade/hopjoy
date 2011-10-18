class HomeController < ApplicationController

  def index 
    @environments = Environment.all
    @languages = Language.all
    
    @intro = Page.get("intro")
  end
  
  def about
  
  end
      
end

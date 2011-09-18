class HomeController < ApplicationController

  def index 

  end
  
  def about
  
  end
  
  def environments
    @environment = Page.find_by_slug!(params[:slug])
  end
  
  def languages
    file = File.new("pages/#{params[:slug]}.md")
    if file
      markdown = RDiscount.new(file.read.to_s)
      @language = markdown.to_html
    end
    
    
  end
end

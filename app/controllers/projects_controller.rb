class ProjectsController < ApplicationController
  
  def show
    permalink = params[:permalink].to_s.gsub("-", "_")
    file = File.new("pages/projects/#{permalink}.md")
    if file
      @page = RDiscount.new(file.read).to_html
    else
      # throw error
    end
  end

end

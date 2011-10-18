class LanguagesController < ApplicationController

  def show    
    @language = Language.find_by_slug!(params[:id])
  end
  
  def environment
    @language = Language.find_by_slug!(params[:id])
    @environment = @language.environments.find_by_slug!(params[:environment])
  end
  
end

class LanguagesController < ApplicationController

  def show    
    @language = Language.find_by_name!(params[:id])
  end
  
  def environment
    @language = Language.find_by_name!(params[:id])
    @environment = @language.environments.find_by_slug!(params[:environment])
  end
  
end

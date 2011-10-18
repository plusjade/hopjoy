class Language < ActiveRecord::Base
  include MarkdownFileHelper
  markdownify :filename => "name", :path => "pages/languages/:name/:type.md"
  
  has_many :languages_projects
  has_many :projects, :through => :languages_projects

  has_many :environments_languages
  has_many :environments, :through => :environments_languages

  def slug
    self.name
  end
  
end

class Language < ActiveRecord::Base
  include MarkdownFileHelper
  markdownify :filename => "slug", :path => "pages/languages/:name/:section.md"
  
  has_many :languages_projects
  has_many :projects, :through => :languages_projects

  has_many :environments_languages
  has_many :environments, :through => :environments_languages

  def name
    self.slug.to_s.gsub("-", " ").capitalize
  end
  
end

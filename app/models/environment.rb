class Environment < ActiveRecord::Base
  include MarkdownFileHelper
  markdownify :filename => "slug", :path => "pages/environments/:name/:section.md"
  
  has_many :projects
  has_many :environments_languages
  has_many :languages, :through => :environments_languages
  

  def name
    self.slug.to_s.gsub("-", " ").gsub(/\w+/) { |s| s.capitalize }
  end
  
end

class Environment < ActiveRecord::Base
  include MarkdownFileHelper
  markdownify :filename => "slug", :path => "pages/environments/:name-:type.md"
  
  has_many :projects
  has_many :environments_languages
  has_many :languages, :through => :environments_languages
  
  
end

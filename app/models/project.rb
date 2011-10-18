class Project < ActiveRecord::Base
  include MarkdownFileHelper
  markdownify :filename => "slug", :path => "pages/projects/:name.md"
  
  has_many :languages_projects
  has_many :languages, :through => :languages_projects
  belongs_to :environment
  
  def name
    self.slug.to_s.gsub("-", " ").gsub(/\w+/) { |s| s.capitalize }
  end
  
end

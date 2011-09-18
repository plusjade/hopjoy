class Project < ActiveRecord::Base
  has_many :languages_projects
  has_many :languages, :through => :languages_projects
  
  def body_to_html
    if File.exists?("pages/projects/#{self.slug}.md")
      RDiscount.new(File.new("pages/projects/#{self.slug}.md").read).to_html
    else
      ""
    end
  end

end

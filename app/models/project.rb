class Project < ActiveRecord::Base
  has_many :languages_projects
  has_many :languages, :through => :languages_projects
  belongs_to :environment
  
  def body_content(:body)
    if File.exists?("pages/projects/#{self.slug}.md")
      RDiscount.new(File.new("pages/projects/#{self.slug}.md").read).content(:body)
    else
      ""
    end
  end

end

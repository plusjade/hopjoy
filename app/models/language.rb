class Language < ActiveRecord::Base
  has_many :languages_projects
  has_many :projects, :through => :languages_projects
  
  def body_to_html
    if File.exists?("pages/languages/#{self.name}.md")
      RDiscount.new(File.new("pages/languages/#{self.name}.md").read).to_html
    else
      ""
    end
  end
  
end

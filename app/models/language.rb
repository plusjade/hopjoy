class Language < ActiveRecord::Base
  has_many :languages_projects
  has_many :projects, :through => :languages_projects

  has_many :environments_languages
  has_many :environments, :through => :environments_languages

  def slug
    self.name
  end
  
  def read(type)
    if File.exists?("pages/languages/#{self.name}/#{type}.md")
      RDiscount.new(File.new("pages/languages/#{self.name}/#{type}.md").read).to_html
    else
      ""
    end
  end
  
  def what_to_html
    read :what
  end
  
  def why_to_html
    read :why
  end 
  
  def how_to_html
    read :how
  end
  
  def example_to_html
    read :example
  end
  
end

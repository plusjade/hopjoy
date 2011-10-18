class Environment < ActiveRecord::Base
  has_many :projects
  
  has_many :environments_languages
  has_many :languages, :through => :environments_languages
  
  def read(type)
    if File.exists?("pages/environments/#{self.slug}-#{type}.md")
      RDiscount.new(File.new("pages/environments/#{self.slug}-#{type}.md").read).to_html
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

require 'rdiscount'
class Intro
  attr_accessor :slug
  
  def languages
    []
  end
  
  def initialize(path)
    self.slug = path
  end  

  def read(type)
    if File.exists?("pages/#{self.slug}-#{type}.md")
      RDiscount.new(File.new("pages/#{self.slug}-#{type}.md").read).to_html
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

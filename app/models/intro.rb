require 'rdiscount'
class Intro
  include MarkdownFileHelper
  markdownify :filename => :slug, :path => "pages/:name-:type.md"
  
  attr_accessor :slug

  
  def languages
    []
  end
  
  def initialize(path)
    self.slug = path
  end  

  
end

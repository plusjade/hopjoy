require 'rdiscount'
class Intro
  include MarkdownFileHelper
  markdownify :filename => :slug, :path => "pages/:name-:section.md"
  
  attr_accessor :slug

  
  def languages
    []
  end
  
  def initialize(path)
    self.slug = path
  end  

  
end

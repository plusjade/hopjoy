module MarkdownFileHelper

  def self.included(model)
    model.extend(ClassMethods)
    class << model; attr_accessor :markdown_path, :markdown_filename end
  end
    
  def path_to_markdown(type)
    self.class.markdown_path.gsub(":name", self.send(self.class.markdown_filename).to_s).gsub(":type", type.to_s)
  end
    
  def read(type)
    if File.exists? path_to_markdown(type)
      RDiscount.new(File.new(path_to_markdown(type)).read).to_html
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

  module ClassMethods
    
    def markdownify(opts={})
      opts[:filename] ||= "name"
      opts[:path] ||= ""

      self.markdown_path = opts[:path].to_s
      self.markdown_filename = opts[:filename].to_s
    end
    
  end # ClassMethods
  
end # MarkdownFileHelper

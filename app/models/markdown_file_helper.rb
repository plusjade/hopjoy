module MarkdownFileHelper

  def self.included(model)
    model.extend(ClassMethods)
    class << model; attr_accessor :markdown_path, :markdown_filename end
  end

  def content(section=nil)
    read section
  end
    
  def read(section)
    if self.content_exists?(section)
      RDiscount.new(File.new(path_to_markdown(section)).read).to_html
    else
      ""
    end
  end
  
  def content_exists?(section)
    File.exists? path_to_markdown(section)
  end
  
  def path_to_markdown(section)
    self.class.markdown_path.gsub(":name", self.send(self.class.markdown_filename).to_s).gsub(":section", section.to_s)
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

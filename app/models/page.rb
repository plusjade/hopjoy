require 'rdiscount'
class Page

  include MarkdownFileHelper
  markdownify :filename => "name", :path => "pages/:name.md"


  def self.get(path)
    if File.exists?("pages/#{path}.md")
      puts "eh!"
      RDiscount.new(File.new("pages/#{path}.md").read).to_html
    else
      ""
    end
  end  

end

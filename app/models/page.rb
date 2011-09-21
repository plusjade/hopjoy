require 'rdiscount'
class Page

  def self.get(path)
    puts path
    if File.exists?("pages/#{path}.md")
      puts "eh!"
      RDiscount.new(File.new("pages/#{path}.md").read).to_html
    else
      ""
    end
  end  

end

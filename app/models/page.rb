require 'rdiscount'

class Page < ActiveRecord::Base
  has_many :pages_tags
  has_many :tags, :through => :pages_tags
  
  def body_to_html
    RDiscount.new(body.to_s).to_html
  end

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

require 'rdiscount'

class Page < ActiveRecord::Base
  has_many :pages_tags
  has_many :tags, :through => :pages_tags
  
  def body_to_html
    RDiscount.new(body.to_s).to_html
  end

  def self.get(slug)
    if File.exists?("pages/#{slug}.md")
      RDiscount.new(File.new("pages/#{slug}.md").read).to_html
    else
      ""
    end
  end  

end

class Environment < ActiveRecord::Base
  has_many :projects
  
  def body_to_html
    if File.exists?("pages/environments/#{self.slug}.md")
      RDiscount.new(File.new("pages/environments/#{self.slug}.md").read).to_html
    else
      ""
    end
  end
  
  
end

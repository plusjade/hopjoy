class Environment < ActiveRecord::Base
  has_many :projects
  
  has_many :environments_languages
  has_many :languages, :through => :environments_languages
  
  
  def body_to_html
    if File.exists?("pages/environments/#{self.slug}.md")
      RDiscount.new(File.new("pages/environments/#{self.slug}.md").read).to_html
    else
      ""
    end
  end
  
  
end

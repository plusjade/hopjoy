class Project < ActiveRecord::Base
  has_many :languages_projects
  has_many :languages, :through => :languages_projects
  
  def body_to_html
    RDiscount.new(body.to_s).to_html
  end
end

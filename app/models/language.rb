class Language < ActiveRecord::Base
  has_many :languages_projects
  has_many :projects, :through => :languages_projects
end

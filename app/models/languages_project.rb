class LanguagesProject < ActiveRecord::Base
  belongs_to :project
  belongs_to :language
end

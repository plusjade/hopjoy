class EnvironmentsLanguage < ActiveRecord::Base
  belongs_to :environment
  belongs_to :language
end

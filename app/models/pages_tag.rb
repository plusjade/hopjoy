class PagesTag < ActiveRecord::Base
  belongs_to :page
  belongs_to :tag
end

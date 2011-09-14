class Tag < ActiveRecord::Base
  has_many :pages_tags
  has_many :pages, :through => :pages_tags

end

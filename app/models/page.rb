require 'rdiscount'

class Page < ActiveRecord::Base

  def body_to_html
    RDiscount.new(body).to_html
  end
  
end

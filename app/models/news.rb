class News < ActiveRecord::Base
	belongs_to :page
  attr_accessible :content, :image, :title, :page_id
end

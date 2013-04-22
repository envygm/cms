class Page < ActiveRecord::Base

	has_and_belongs_to_many :menus
	has_many :news

 	attr_accessible :content, :title, :menu_ids

	validates :title, presence: true, 
  					length: {minimum: 3 }
end

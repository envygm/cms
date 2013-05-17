class Page < ActiveRecord::Base

	acts_as_indexed :fields => [:title, :content]

	has_and_belongs_to_many :menus
	has_many :news

 	attr_accessible :content, :title, :menu_ids

	validates :title, presence: true, 
  					length: {minimum: 3, maximum:15 }
  	validates :content, presence:true
end

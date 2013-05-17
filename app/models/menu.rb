class Menu < ActiveRecord::Base
	acts_as_indexed :fields => [:name]

	has_and_belongs_to_many :pages

	attr_accessible :name, :page_ids
	validates :name, presence:true,
					length: {minimum: 3}
end

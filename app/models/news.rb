require 'uri'

class News < ActiveRecord::Base

	acts_as_indexed :fields => [:title, :content]

	belongs_to :page
	attr_accessible :content, :image, :title, :page_id

	validates :title, presence: true,
						length: {minimum: 3}
	validates :content, presence: true
	validate :url_valid?
	validates :page_id, presence: true
	validates_associated :page

	default_value_for :title, 'I am THE title.'

	def url_valid?
		uri = URI.parse(self.image)
		if !uri.kind_of?(URI::HTTP) and !uri.kind_of?(URI::HTTPS) and !self.image.empty?
			errors.add :image, 'Wrong image URL!'
		end
	end
end

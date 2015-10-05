class Note < ActiveRecord::Base
	belongs_to :user
	paginates_per 2
	validates_presence_of :title, :content

	def self.search(keyword)
		self.where("title like :keyword OR content like :keyword", :keyword => "%#{keyword}%")
	end
end

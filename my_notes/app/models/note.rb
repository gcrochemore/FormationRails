class Note < ActiveRecord::Base
	paginates_per 3

	def self.search(keyword)
		self.where("user like :keyword OR content like :keyword", :keyword => "%#{keyword}%")
	end
end

class Note < ActiveRecord::Base
	def self.search(keyword)
		self.where("user like :keyword OR content like :keyword", :keyword => "%#{keyword}%")
	end
end

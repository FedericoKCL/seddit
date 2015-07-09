class Subreddit < ActiveRecord::Base

	before_save { self.url = url.downcase }

	validates(:name, presence: true, uniqueness: {case_sensitive: false})
	validates(:url, presence: true, uniqueness: { case_sensitive: false})
	validates(:desc, presence: true)

	has_many :post
end

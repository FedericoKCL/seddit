class SubredditController < ApplicationController
	def view
		@subreddit = Subreddit.find_by id: params[:id]
	end
end

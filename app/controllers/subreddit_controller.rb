class SubredditController < ApplicationController
  def view
    @subreddit = Subreddit.find_by url: params[:url]
  end
end

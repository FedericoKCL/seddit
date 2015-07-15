class SubredditController < ApplicationController
  include ApplicationHelper

  def view
    @subreddits = subreddits
    @subreddit = Subreddit.find_by(url: params[:sr])
    @posts = @subreddit.post
    @collection = []
    @posts.each do |post|
      single = [post, post.user.username, post.comment.count]
      @collection << single
    end
    @collection
    # Things we need: posts with username and number of comments
  end
end

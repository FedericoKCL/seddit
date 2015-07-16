class SubredditController < ApplicationController

  def view
    @subreddit = Subreddit.find_by url: params[:url]
    @collection = []
    @subreddit.post.each do |post|
      @collection << [post, post.user.username, post.comment.count]
    end
  end
end

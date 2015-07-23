class SubredditController < ApplicationController
  require 'json'

  def view
    @subreddit = Subreddit.find_by url: params[:url]
    @posts = []
    @subreddit.post.each do |post|
      @posts << [post, 'comment_count', 'BloodyUser']
    end
    @posts = @posts.to_json
  end
end

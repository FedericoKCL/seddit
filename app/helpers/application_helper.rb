module ApplicationHelper
  require 'json'

  def subreddits
    Subreddit.all.order(:name).to_json
  end

  def find_comment_user(user_id)
    @user = User.find(user_id)
  end
end

module ApplicationHelper
  def subreddits
    Subreddit.all.order(:name)
  end

  def find_comment_user(user_id)
    @user = User.find(user_id)
  end

end

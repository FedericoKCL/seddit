module ApplicationHelper
  def subreddits
    Subreddit.all.order(:name)
  end
end

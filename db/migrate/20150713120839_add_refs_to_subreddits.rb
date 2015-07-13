class AddRefsToSubreddits < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.belongs_to :subreddit, index: true
    end
  end
end

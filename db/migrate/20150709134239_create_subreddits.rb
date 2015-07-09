class CreateSubreddits < ActiveRecord::Migration
  def change
    create_table :subreddits do |t|
      t.string :name
      t.string :url
      t.string :desc
      t.boolean :private, :default => false

      t.timestamps null: false
    end
  end
end

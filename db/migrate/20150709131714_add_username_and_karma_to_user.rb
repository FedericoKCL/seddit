class AddUsernameAndKarmaToUser < ActiveRecord::Migration
  def change
  		add_column :users, :username, :string
  		add_column :users, :karma, :decimal
  end
end

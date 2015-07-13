class AddBelongsToToComments < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :post, index: true
    end
  end
end

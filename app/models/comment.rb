class Comment < ActiveRecord::Base
  validates(:text, presence: true)

  belongs_to :user
  belongs_to :post

  validates_presence_of :user, :post
end

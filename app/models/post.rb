class Post < ActiveRecord::Base
  validates(:title, presence: true, length: { maximum: 100 })

  validates(:body, presence: true, if: self_post?)

  belongs_to :user

  has_many :comment

  def self_post?
    url.blank?
  end
end

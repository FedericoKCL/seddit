class Post < ActiveRecord::Base

  validates(:title, presence: true, length: { maximum: 100 })

  validates(:body, presence: true, if: "has_no_url?")

  belongs_to :user

  has_many :comment

  def is_self_post?
    self.url.blank?
  end

  alias_method :has_no_url?, :is_self_post?
end

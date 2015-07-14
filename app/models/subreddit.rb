class Subreddit < ActiveRecord::Base
  VALID_SRURL_REGEX = /\A[a-z]+\z/i
  before_save { self.url = url.downcase }

  validates(:name, presence: true,
                   length: { maximum: 20 },
                   uniqueness: { case_sensitive: false }
           )
  validates(:url, presence: true,
                  length: { maximum: 20 },
                  format: { with: VALID_SRURL_REGEX },
                  uniqueness: { case_sensitive: false }
           )
  validates(:desc, presence: true)

  has_many :post
end

class Post < ActiveRecord::Base
  validates(:title, presence: true,
                    length: { maximum: 100 }
           )

  validates(:body, presence: true, if: proc { |a| a.url.blank? })

  belongs_to :user

  has_many :comment
end

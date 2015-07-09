class Post < ActiveRecord::Base

	validates(:title, presence: true, length: { maximum: 100 })

	belongs_to :user

	has_many :comment
end

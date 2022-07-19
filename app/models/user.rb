class User < ApplicationRecord
  has_many :posts, foreign_key: 'author_id'
  has_many :comments, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'

  validates :name, presence: { message: 'Name field can not left blank' }
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # private

  def most_recent_posts
    posts.order('created_at DESC').limit(3)
  end
end

class Post < ApplicationRecord
  has_many :likes
  has_many :comments
  belongs_to :author, class_name: 'User', foreign_key: :author_id

  after_save :update_post_counter

  private

  def update_post_counter
    author.increment!(:post_counter)
  end
end

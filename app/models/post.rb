class Post < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags
end

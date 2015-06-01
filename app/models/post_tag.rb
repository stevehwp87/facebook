class PostTag < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :tag
  belongs_to :post
end

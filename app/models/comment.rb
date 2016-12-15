class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  validates :comment_type, presence: true
  validates :content, presence: true

end

class Post < ActiveRecord::Base
  # belongs_to :category
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  belongs_to :group
  has_many :comments

  validates :category, presence: true
  validates :title, presence: true

  validates :content, presence: true
end

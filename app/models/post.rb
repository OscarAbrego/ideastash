class Post < ActiveRecord::Base
  # belongs_to :category
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :category, presence: true
  validates :title, presence: true

  validates :content, presence: true
end
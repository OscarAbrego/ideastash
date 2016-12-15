class Post < ActiveRecord::Base
  # belongs_to :category
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  belongs_to :group
  has_many :comments

  validates :category, presence: true
  validates :title, presence: true

  validates :content, presence: true

  scope :technology,    ->{ where( category:"Technology")}
  scope :health,        ->{ where( category:"Health")}
  scope :business,      ->{  where(category:"Business")}
  scope :outdoors,      ->{ where( category:"Outdoors")}
  scope :home,          ->{ where( category:"Home")}
  scope :other,         ->{  where(category:"Other")}

  scope :technology_private,    ->{ where( category:"Technology")}
  scope :health_private,        ->{ where( category:"Health")}
  scope :business_private,      ->{  where(category:"Business")}
  scope :outdoors_private,      ->{ where( category:"Outdoors")}
  scope :home_private,          ->{ where( category:"Home")}
  scope :other_private,         ->{  where( category:"Other")}
end

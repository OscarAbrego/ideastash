class User < ActiveRecord::Base

  enum role: [:admin, :normal]

  has_many :posts
  has_many :comments

  has_many :group_users
  has_many :groups, through: :group_users
  # has_many :groups
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true
  validates_uniqueness_of :username
  validates :email, presence: true
  validates :password, presence: true

end

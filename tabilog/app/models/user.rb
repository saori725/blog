class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :matelpages
  has_many :comments
  has_many :likes, dependent: :destroy

  # validation
  validates_uniqueness_of :nickname
  validates_presence_of :nickname
end

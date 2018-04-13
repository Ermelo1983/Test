class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :posts
  has_many :comments
  has_one :profile
  has_many :friendships
  has_many :friends, :through => :friendships
  accepts_nested_attributes_for :profile

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email, uniqueness: true
  validates_presence_of :password

  def full_name
    ([first_name, last_name] - ['']).compact.join(' ')
  end
end

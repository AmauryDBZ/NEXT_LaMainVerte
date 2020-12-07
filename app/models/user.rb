class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
		:jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  has_many :gardens
  has_many :follows
  has_many :post_comments
  has_many :garden_comments
  has_many :testimonies
  
  validates :email,
    presence: true
end

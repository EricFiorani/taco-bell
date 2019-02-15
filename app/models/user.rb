class User < ApplicationRecord

  has_many :ratings
  has_many :tacos, through: :ratings

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
end

class User < ApplicationRecord

  has_many :ratings
  has_many :tacos, through: :ratings
end

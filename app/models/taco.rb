class Taco < ApplicationRecord

  has_many :ratings
  has_many :users, through: :ratings

  def full_name
  end

  def average_rating
  end

  def most_reviewed
    self.average_rating + self.ratings.count
  end

  def most_popular?
    if self.average_rating >= 3
      "#{self.full_name} " + "#{self.most_reviewed}"
    end
  end

  def self.popular
    Taco.all.each do |taco|
      taco.most_popular?
    end
  end
  
end

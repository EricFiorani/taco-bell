class Rating < ApplicationRecord

  belongs_to :users
  belong_to :wine

  validates :stars, presence: true
  validates :taco_id, presence: true

  def list_with_names
    "Taco Bell Item: #{self.taco.name}"
  end
end

class Rating < ApplicationRecord

  belongs_to :users
  belong_to :wine

  def list_with_names
    "Taco Bell Item: #{self.taco.name}"
  end
end

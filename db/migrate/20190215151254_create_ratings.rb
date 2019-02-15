class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.string :user_id
      t.string :taco_id
      t.text :taste
      t.text :comments
      t.timestamps
    end
  end
end

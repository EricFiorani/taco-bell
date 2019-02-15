class CreateTacos < ActiveRecord::Migration[5.2]
  def change
    create_table :tacos do |t|
      t.string :name
      t.string :category
      t.integer :creator_id
      t.timestamps
    end
  end
end

class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
  create_table :workouts do |t|
    t.string :category
    t.string :source
    t.string :creator
    t.integer :intensity
    t.integer :time
  end
  end
end

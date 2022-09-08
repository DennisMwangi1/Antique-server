class CreateTrainers < ActiveRecord::Migration[6.1]
  def change
  create_table :trainers do |t|
    t.string :name
    t.string :image
    t.integer :age
    t.integer :experience
    t.string :specialization
    end
  end
end

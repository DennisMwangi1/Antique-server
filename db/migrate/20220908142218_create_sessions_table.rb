class CreateSessionsTable < ActiveRecord::Migration[6.1]
  def change
  create_table :sessions do |t|
    t.string :trainer_name
    t.string :start_time
    t.string :finish_time
    t.integer :user_id
    t.integer :trainer_id
  end

  end
end

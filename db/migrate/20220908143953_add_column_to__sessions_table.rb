class AddColumnToSessionsTable < ActiveRecord::Migration[6.1]
  def change
  add_column :sessions, :date, :string
  end
end

class AddTodoToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :todo, :string
  end
end

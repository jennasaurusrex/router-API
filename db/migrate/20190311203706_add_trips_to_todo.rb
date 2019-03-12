class AddTripsToTodo < ActiveRecord::Migration[5.2]
  def change
    add_reference :todos, :trip, foreign_key: true
  end
end

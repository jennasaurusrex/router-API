class RemoveTodoFromTrip < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :todo, :string
  end
end

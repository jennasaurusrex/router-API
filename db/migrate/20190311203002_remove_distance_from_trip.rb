class RemoveDistanceFromTrip < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :distance, :bigint
  end
end

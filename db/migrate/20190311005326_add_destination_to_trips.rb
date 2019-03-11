class AddDestinationToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :destination, :string
  end
end

class RemoveExpenseFromTrips < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :expense, :bigint
  end
end

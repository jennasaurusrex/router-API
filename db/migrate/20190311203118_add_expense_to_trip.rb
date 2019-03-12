class AddExpenseToTrip < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :expense, :bigint
  end
end

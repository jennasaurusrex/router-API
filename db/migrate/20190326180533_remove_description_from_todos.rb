class RemoveDescriptionFromTodos < ActiveRecord::Migration[5.2]
  def change
    remove_column :todos, :description, :string
  end
end

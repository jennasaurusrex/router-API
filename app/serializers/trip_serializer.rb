class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :origin, :destination, :expenses, :todos, :user_id, :editable

  def editable
    scope == object.user
  end
end

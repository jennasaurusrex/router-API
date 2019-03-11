class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :origin, :destination, :todo, :distance, :user_id, :editable

  def editable
    scope == object.user
  end
end

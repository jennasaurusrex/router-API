class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :user_id, :editable

  def editable
    scope == object.user
  end
end

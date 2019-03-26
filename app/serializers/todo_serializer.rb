class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :editable, :trip_id

  def editable
    scope == object.trip
  end
end

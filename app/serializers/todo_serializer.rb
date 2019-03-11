class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :editable, :trip_id

  def editable
    scope == object.user
  end
end

class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :amount, :description, :editable, :trip_id

  def editable
    scope == object.trip
  end
end

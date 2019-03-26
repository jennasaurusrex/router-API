class Trip < ApplicationRecord
  belongs_to :user
  has_many :todos
  has_many :expenses
end

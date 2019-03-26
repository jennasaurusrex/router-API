# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :trips
  has_many :todos, through: :trips
  has_many :expenses, through: :trips
end

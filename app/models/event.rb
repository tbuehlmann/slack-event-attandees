class Event < ApplicationRecord
  has_many :event_attandees
  has_many :users, through: :event_attandees
end

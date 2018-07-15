class User < ApplicationRecord
  has_many :event_attandees
  has_many :events, through: :event_attandees
end

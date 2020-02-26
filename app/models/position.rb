class Position < ApplicationRecord
  belongs_to :event
  has_many :applications
end

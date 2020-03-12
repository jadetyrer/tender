class Position < ApplicationRecord
  belongs_to :event
  has_many :applications, dependent: :destroy
  validates :position_type, presence: true
  validates :rate, presence: true
  validates :hours, presence: true
end

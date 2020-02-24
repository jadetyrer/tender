class Event < ApplicationRecord
  has_one_attached :picture
  belongs_to :user
  has_many :positions
end

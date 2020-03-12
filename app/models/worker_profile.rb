class WorkerProfile < ApplicationRecord
  belongs_to :worker
  has_one_attached :resume
  has_one_attached :document
  has_one_attached :photo
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :bio, presence: true
  validates :city, presence: true
  validates :country, presence: true
end

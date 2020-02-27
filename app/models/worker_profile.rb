class WorkerProfile < ApplicationRecord
  belongs_to :worker
  has_one_attached :resume
  has_one_attached :document
  has_one_attached :photo
end

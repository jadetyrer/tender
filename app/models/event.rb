class Event < ApplicationRecord
  has_one_attached :picture
  belongs_to :user
  has_many :positions
  has_many :applications, through: :positions

  def pending_applications
    applications.where(status: "pending")
  end

  def accepted_applications
    applications.where(status: "accepted")
  end

  def rejected_applications
    applications.where(status: "rejected")
  end

end

class Event < ApplicationRecord
  has_one_attached :picture
  belongs_to :user
  has_many :positions, dependent: :destroy
  has_many :applications, through: :positions, dependent: :destroy

  def pending_applications
    applications.where(status: "pending")
  end

  def accepted_applications
    applications.where(status: "accepted")
  end

  def rejected_applications
    applications.where(status: "rejected")
  end

  def self.search(search)
    if search 
      where(["name LIKE ?", "%#{search}"])
    else 
      all
    end 
  end 

end

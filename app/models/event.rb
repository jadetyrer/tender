class Event < ApplicationRecord
  has_one_attached :picture
  belongs_to :user
  has_many :positions, dependent: :destroy
  has_many :applications, through: :positions, dependent: :destroy
  validates :name, presence: true
  validates :location, presence: true
  validates :contact_email, presence: true
  validates :description, presence: :true
  validates :date_from, presence: :true
  validates :date_to, presence: :true

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
      where(["lower(name) LIKE ?", "%#{search.downcase}"])
    else 
      all
    end 
  end 

end

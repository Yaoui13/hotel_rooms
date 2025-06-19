class Hotel < ApplicationRecord
  has_many :rooms, dependent: :destroy
  has_many :reservations, through: :rooms

  validates :name, presence: true
  validates :address, presence: true
end


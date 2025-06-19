class Room < ApplicationRecord
  belongs_to :hotel
  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :price, presence: true, numericality: { greater_than: 0 }
end

class Room < ApplicationRecord
  # Pas de relation belongs_to hotel, c’est une entité indépendante
  validates :name, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :capacity, numericality: { only_integer: true, greater_than: 0 }, allow_nil: true
end

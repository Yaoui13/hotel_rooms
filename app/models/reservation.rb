class Reservation < ApplicationRecord
  belongs_to :room

  validates :client_name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :room_id, presence: true
end


class Reservation < ApplicationRecord
  belongs_to :room

  validates :client_name, :start_date, :end_date, presence: true

  
  def total_price
    (end_date - start_date).to_i * room.price
  end
end

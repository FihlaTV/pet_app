class Reservation < ApplicationRecord
  belongs_to :business_service
  belongs_to :guest, :class_name => "User"
  has_many :pets, through: :guest
  has_one :review
end

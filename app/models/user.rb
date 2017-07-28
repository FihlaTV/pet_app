class User < ApplicationRecord
  has_many :pets
  has_one :business_unit, foreign_key: :owner_id
  has_many :reservations, foreign_key: :guest_id
  has_many :owners, through: :reservations
  has_many :reviews, foreign_key: :guest_id
end

class Pet < ApplicationRecord
  belongs_to :user
  has_one :business_unit, through: :user
  has_many :reservations, through: :user

end

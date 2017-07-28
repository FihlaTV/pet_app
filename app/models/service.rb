class Service < ApplicationRecord
  has_many :business_services
  has_many :business_units, through: :business_services
  has_many :reservations, through: :business_services
end

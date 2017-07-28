class City < ApplicationRecord
  has_many :neighborhoods 
  has_many :business_units, through: :neighborhoods

end

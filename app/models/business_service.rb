class BusinessService < ApplicationRecord
  has_many :reservations
  has_many :reviews, through: :reservations
  belongs_to :business_unit
  belongs_to :service
end

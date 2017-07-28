class BusinessUnit < ApplicationRecord
  belongs_to :owner, :class_name => "User"
  belongs_to :neighborhood
  has_one :home
  has_many :business_services
  has_many :services, through: :business_services
  has_many :reservations, through: :business_services
  has_many :review, through: :reservations
  has_many :guests, :class_name => "User", :through => :reservations

end

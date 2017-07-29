class Reservation < ApplicationRecord
  belongs_to :business_service
  belongs_to :guest, :class_name => "User"
  has_many :pets, through: :guest
  has_one :review

  def guest_not_business_service_owner
    if self.business_service.business_unit_id == guest_id 
      errors.add(:guest_not_business_service_owner, "You cannot make a reservation on your own listing")
    end
  end 

  def checkin_before_checkout
    if checkin && checkout && checkout <= checkin
      errors.add(:reservation, "Checkout date must be after Checkin date")
    end
  end

  def duration 
    checkout - checkin
  end

  def total_price 
    duration * business_service.rate
  end

  def available?
    if checkin && checkout
      business_service.reservations.each do |res|
        errors.add(:reservation, "Please try again")
      end
    end
  end

end

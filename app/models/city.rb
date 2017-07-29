class City < ApplicationRecord
  has_many :neighborhoods 
  has_many :business_units, through: :neighborhoods
  has_many :business_services, through: :neighborhoods

  def city_openings(start_date, end_date, service_id)
    self.business_services.each do |bs|
      bs.reservations.collect do |res|
        if res.checkin <= end_date.to_date && res.checkout >= start_date.to_date
          bs
        end
      end
    end
  end

end

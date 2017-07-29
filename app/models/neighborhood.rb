class Neighborhood < ApplicationRecord
  belongs_to :city
  has_many :business_units
  has_many :business_services, through: :business_units

  def neighborhood_openings(start_date, end_date, service)
    self.business_services.each do |bs|
      bs.reservations.collect do |res|
        if res.checkin <= end_date.to_date && res.checkout >= start_date.to_date
          bs
        end
      end
    end
  end
end

class BusinessService < ApplicationRecord
  has_many :reservations
  has_many :reviews, through: :reservations
  belongs_to :business_unit
  belongs_to :service

  def average_review_rating
    ratings = []
    reservations.each {|res| ratings << res.review.rating unless res.review.nil?}
    ratings.sum.to_f/ratings.size
  end


  def available?(checkin, checkout)
    @checkin = checkin
    @checkout = checkout
    reservations.each do |res|
      if res.checkin <= @checkout.to_date && res.checkout >= checkin.to_date
        false
      else
        true
      end
    end
  end

  def booked
    @booked = [] 
    self.reservations.each do |res|
      @booked = (res.checkin..res.checkout).map{|date| date}
    end
    @booked.uniq!
  end
end

      
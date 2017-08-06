class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :pets
  has_one :business_unit, foreign_key: :owner_id
  has_many :reservations, foreign_key: :guest_id
  has_many :owners, through: :reservations
  has_many :reviews, foreign_key: :guest_id
  before_create :generate_authentication_token!
  validates :auth_token, uniqueness: true


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def generate_authentication_token!
    begin
      self.auth_token = Devise.friendly_token
    end while self.class.exists?(auth_token: auth_token)
  end
end

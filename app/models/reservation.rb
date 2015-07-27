class Reservation < ActiveRecord::Base
  validates :guests, presence: { :message => "cannot be blank" }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length:{ maximum:30 },
                    format: {with: VALID_EMAIL_REGEX}
  belongs_to :restaurant
  belongs_to :user
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, :password, :password_confirmation, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length:{ maximum:30 },
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: { case_sensitive: false }
  validates :password, length:{ minimum:6 }  
  has_many :restaurants
  has_many :reservations
  ratyrate_rater
end

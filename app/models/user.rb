class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :password,  presence: true, length: { minimum: 6 }

  has_many :job_applications

  enum role: {
    admin: 0,
    candidate: 1
  }
end

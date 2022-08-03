class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
  validates :nickname
  validates :password, format: {with: /\A[a-z0-9]+\z/i, message:"is invalid. Input half-width characters."}, allow_blank: true
  end
end

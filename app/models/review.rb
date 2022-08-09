class Review < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :grip_type
  belongs_to :play_game
  belongs_to :user
  has_many :review_mouses
  has_many :mouses, through: :review_mouses

  with_options presence: true, numericality: { other_than: 1, message: "can't be blank"} do
    validates :grip_type_id
    validates :play_game_id
  end

  with_options presence: true do
    validates :rating, format: { with: /\A[1-5]\z/, message: "is invalid. Input number from 1 to 5 in half-width.", allow_blank: true }
    validates :usability
  end
end

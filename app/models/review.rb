class Review < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :grip_type
  belongs_to :play_game
  belongs_to :user
  has_many :review_mouses
  has_many :mouses, through: :review_mouses

  
end

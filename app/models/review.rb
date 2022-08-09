class Review < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :grip_type
  belongs_to :play_game
  belongs_to :user

  with_options presence: true, numericality: { other_than: 1, message: "can't be blank"} do
    validates :grip_type_id
    validates :play_game_id
  end
end

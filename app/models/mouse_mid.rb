class MouseMid
  include ActiveModel::Model
  attr_accessor :grip_type_id, :play_game_id, :rating, :usability, :user_id, :mouse_id, :review_id

  #reviewモデルのバリデーション
  
  #review_mouseモデルのバリデーション
  validates :mouse_id, presence: true

  def save
    review_mouse = Review.create(grip_type_id: grip_type_id, play_game_id: play_game_id, rating: rating, usability: usability, user_id: user_id)
    ReviewMouse.create(mouse_id: mouse_id, review_id: review_mouse.id)
  end
end
class MouseMid
  include ActiveModel::Model
  attr_accessor :grip_type_id, :play_game_id, :rating, :usability, :user_id, :mouse_id, :review_id

  #reviewモデルのバリデーション
  with_options presence: true, numericality: { other_than: 1, message: "can't be blank"} do
    validates :grip_type_id
    validates :play_game_id
  end

  with_options presence: true do
    validates :rating, format: { with: /\A[1-5]\z/, message: "is invalid. Input number from 1 to 5 in half-width.", allow_blank: true }
    validates :usability
  end

  #review_mouseモデルのバリデーション
  validates :mouse_id, presence: true

  def save
    review_mouse = Review.create(grip_type_id: grip_type_id, play_game_id: play_game_id, rating: rating, usability: usability, user_id: user_id)
    ReviewMouse.create(mouse_id: mouse_id, review_id: review_mouse.id)
  end
end
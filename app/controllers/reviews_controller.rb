class ReviewsController < ApplicationController

  def create
    binding.pry
    @review = Review.new(review_params)
  end
  

  private
  def review_params
    params.require(:review).permit(:grip_type_id, :play_game_id, :rating, :usability, :mouse_id).merge(user_id: current_user.id)
  end
end

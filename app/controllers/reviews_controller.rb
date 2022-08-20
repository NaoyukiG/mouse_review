class ReviewsController < ApplicationController
  before_action :if_admin

  def create
    @review = Review.new(review_params)
    @mouse = Mouse.find(@review.mouse_id)
    if @review.valid?
      @review.save
      redirect_to mouse_path(@mouse.id)
    else
      render template: "mouses/show"
    end
  end
  
  def destroy
    review = Review.find(params[:id])
    if current_user.id == review.user_id
      review.destroy
      redirect_to mouse_path(params[:mouse_id])
    else
      render template: "mouses/show"
    end
  end

  private
  def review_params
    params.require(:review).permit(:grip_type_id, :play_game_id, :rating, :usability, :mouse_id).merge(user_id: current_user.id)
  end

  def if_admin
    redirect_to root_path if current_user.admin?
  end
end

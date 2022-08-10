class ReviewsController < ApplicationController
  before_action :if_admin

  def create
    @mouse_mid = MouseMid.new(review_params)
    @mouse = Mouse.find(@mouse_mid.mouse_id)
    if @mouse_mid.valid?
      @mouse_mid.save
      redirect_to mouse_path(@mouse.id)
    else
      render template: "mouses/show"
    end
  end
  
  def destroy
    review = Review.find(params[:id])
    if current_user.id == review.user_id
      review.destroy
      redirect_to 
    else
      render template: "mouses/show"
    end
  end

  private
  def review_params
    params.require(:mouse_mid).permit(:grip_type_id, :play_game_id, :rating, :usability).merge(user_id: current_user.id, mouse_id: params[:mouse_mid][:mouse_id])
  end

  def if_admin
    redirect_to root_path if current_user.admin?
  end
end

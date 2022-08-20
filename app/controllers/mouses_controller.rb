class MousesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @mice = Mouse.includes(:user).order("created_at DESC")
  end
  
  def show
    @mouse = Mouse.find(params[:id])
    @reviews = @mouse.reviews.includes(:mouse).order("created_at DESC")
    @review = Review.new
  end
  
end

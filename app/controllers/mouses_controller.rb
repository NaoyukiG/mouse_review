class MousesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @mice = Mouse.includes(:user).order("created_at DESC")
  end
  
  def show
    @mouse = Mouse.find(params[:id])
  end
  
end

class MousesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @mice = Mouse.includes(:user).order("created_at DESC")
  end
  
  
end

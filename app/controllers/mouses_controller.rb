class MousesController < ApplicationController

  def index
    @mice = Mouse.includes(:user).order("created_at DESC")
  end
  
  
end

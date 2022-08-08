class Admin::MouseController < ApplicationController
  before_action :if_not_admin

  def new
    @mouse = Mouse.new
  end

  def create
    @mouse = Mouse.new(mouse_params)
    if @mouse.valid?
      @mouse.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def mouse_params
    params.require(:mouse).permit(:name, :maker_id, :connection_id, :symmetry_id, :wight, :dpi, :software_id, :software_url, :order_url).merge(user_id: current_user.id)
  end
end

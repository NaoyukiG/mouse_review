class Admin::MouseController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
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
      render :new
    end
  end

  def edit
    @mouse = Mouse.find(params[:id])
  end

  def destroy

  end

  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def mouse_params
    params.require(:mouse).permit(:name, :maker_id, :connection_id, :symmetry_id, :weight, :dpi, :software_id, :software_url, :order_url, :image).merge(user_id: current_user.id)
  end
end

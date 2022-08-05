class Admin::MouseController < ApplicationController
  before_action :if_not_admin

  def new
    @mouse = Mouse.new

  private

  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

end

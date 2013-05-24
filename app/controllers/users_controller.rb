class UsersController < ApplicationController
  def index
  		@users = user.page(params[:page]).per_page(3)

  def show
  	@user = User.find(params[:id])
  	@pins = @user.pins.page(params[:page]).per_page(3)
  end
end

class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id]) # ここを記述
  	@post_images = @user.post_images.page(params[:page]).reverse_order
  end
end

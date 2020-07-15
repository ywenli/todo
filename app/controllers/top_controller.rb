class TopController < ApplicationController

  def index
    @lists = List.where(user: current_user).order("created_at ASC")
  end

  def new_guest
    user = User.new_guest
    sign_in user
    redirect_to root_path, notice: "テストユーザーでログインしました"
  end
end

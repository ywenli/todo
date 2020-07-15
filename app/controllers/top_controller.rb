class TopController < ApplicationController

  def index
    @lists = List.where(user: current_user).order("created_at ASC")
  end

  def new_guest
    user = User.find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
    sign_in user
    redirect_to root_path
  end
end

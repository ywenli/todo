# frozen_string_literal: true

class Users::UnlocksController < Devise::UnlocksController

  def edit
    @user = User.find_by(id: params[:id])
  end
  # protected

  # The path used after sending unlock password instructions
  # def after_sending_unlock_instructions_path_for(resource)
  #   super(resource)
  # end

  # The path used after unlocking the resource
  # def after_unlock_path_for(resource)
  #   super(resource)
  # end
end

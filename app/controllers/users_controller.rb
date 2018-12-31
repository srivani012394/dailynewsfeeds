class UsersController < ApplicationController
  
  def confirm
    user = User.where(confirmation_token: params[:confirmation_key]).first
    raise ActiveRecord::RecordNotFound if user.nil?
    user.update(confirmed_at: DateTime.now, confirmation_token: nil)
  rescue ActiveRecord::RecordNotFound
    @error = "Sorry, but we are not able to find you. Please register again."
  end

  private

  def user_params
    params
      .require(:user)
      .permit(:email)
  end
end

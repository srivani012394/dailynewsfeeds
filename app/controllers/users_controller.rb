class UsersController < ApplicationController

  def new
    @user = User.new
    @keywords = Keyword.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @success = "Please check your email to confirm your subscription."
    else
      @keywords = Keyword.all
      render :new
    end
  end

  def destroy
    user = User.where(confirmation_token: params[:confirmation_key]).first
    raise ActiveRecord::RecordNotFound if user.nil?
    user.destroy
  rescue ActiveRecord::RecordNotFound
    @error = "Sorry, but we failed processing your request."
  end

  def confirm
    user = User.where(confirmation_token: params[:confirmation_key]).first
    raise ActiveRecord::RecordNotFound if user.nil?
    user.update(confirmed_at: DateTime.now)
  rescue ActiveRecord::RecordNotFound
    @error = "Sorry, but we are not able to find you. Please register again."
  end

  private

  def user_params
    params
      .require(:user)
      .permit(:email, keyword_ids:[])
  end
end

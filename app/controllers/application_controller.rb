class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  before_action :setup
  before_action :current_user

  def current_user
    @user = (User.find_by(id: session[:user_id])|| User.new)
  end

  def get_notification
    flash["message"]
  end

  def set_notification(message)
    flash["message"] = message
  end

  private

  def log_in_user(user_id)
  session[:user_id] = user_id
  end

  def log_out_user
    session[:user_id] = nil
  end

  def setup

    @logged_in = !!session[:user_id]
    if @logged_in
      @logged_in_user_id = session[:user_id]
      @logged_in_user = User.find(@logged_in_user_id)
      # @remaining_votes = @logged_in_user.remaining_votes
      # @can_vote = @logged_in_user.can_vote
    end

    @notification = get_notification
  end
end

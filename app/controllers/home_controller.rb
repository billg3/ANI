class HomeController < ApplicationController
  before_action :current_user

  def index
    @anime = Anime.all
    @user = current_user
  end
end

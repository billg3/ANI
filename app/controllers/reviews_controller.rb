class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = Review.all
  end


    def create
      unless @logged_in
        set_notification("You're not logged in ")
        redirect_to new_login_path
        return
      end

      if @can_vote
        # use_one_vote
        @vote = Vote.create(color_id: params[:color_id], user_id: session[:user_id])
        # byebug
      else
        set_notification("You're out of votes 🖕")
      end
      redirect_to colors_path
    end

    def destroy
      @vote = Vote.find(params[:id])
      if @vote.user_id == @logged_in_user_id
        @vote.destroy
      end
      redirect_to votes_path
    end
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:stars, :user_id, :anime_id, :comment)
    end
end

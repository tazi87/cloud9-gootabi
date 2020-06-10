class ReviewsController < ApplicationController
  # def index
  # end
  
  def new
  end
  
  def create
    Review.create(review: review_params[:review], user_id: current_user.id, with_w: review_params[:with_w], how_l: review_params[:how_l], purp: review_params[:purp], place: review_params[:place], image: review_params[:image])
  end
  # plan_id: params[:plan_id],
  private
  def review_params
    params.permit(:review, :with_w, :how_l, :purp, :place, :image)
  end
end

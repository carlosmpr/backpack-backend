class ActivityReviewsController < ApplicationController
  before_action :set_activity_review, only: [:show, :update, :destroy]

  # GET /activity_reviews
  def index
    @activity_reviews = ActivityReview.all

    render json: @activity_reviews
  end

  # GET /activity_reviews/1
  def show
    render json: @activity_review
  end

  # POST /activity_reviews
  def create
    @activity_review = ActivityReview.new(activity_review_params)

    if @activity_review.save
      render json: @activity_review, status: :created, location: @activity_review
    else
      render json: @activity_review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /activity_reviews/1
  def update
    if @activity_review.update(activity_review_params)
      render json: @activity_review
    else
      render json: @activity_review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /activity_reviews/1
  def destroy
    @activity_review.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_review
      @activity_review = ActivityReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def activity_review_params
      params.require(:activity_review).permit(:activity_id, :user_id, :comment, :likes)
    end
end

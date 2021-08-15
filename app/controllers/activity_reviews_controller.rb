class ActivityReviewsController < ApplicationController
  before_action :set_activity_review, only: [:show, :update, :destroy]

  # POST /activity_reviews
  def create
    token  = request.headers['Authorization']
    user = User.validateUser(token)
    if user
      @activity_review = ActivityReview.new(activity_id:params[:activity_id], user_id: user[:id], comment: params[:comment], likes:params[:likes])
      if @activity_review.save
        render json: @activity_review, status: :created, location: @activity_review
      else
        render json: @activity_review.errors, status: :unprocessable_entity
      end
    else 
      render json: {msg:"Unauthorized"}, status: :bad_request
  end
end
  


  

 
end

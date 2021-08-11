class FriendsGoingsController < ApplicationController
  before_action :set_friends_going, only: [:show, :update, :destroy]

  # GET /friends_goings
  def index
    @friends_goings = FriendsGoing.all

    render json: @friends_goings
  end

  # GET /friends_goings/1
  def show
    render json: @friends_going
  end

  # POST /friends_goings
  def create
    @friends_going = FriendsGoing.new(friends_going_params)

    if @friends_going.save
      render json: @friends_going, status: :created, location: @friends_going
    else
      render json: @friends_going.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /friends_goings/1
  def update
    if @friends_going.update(friends_going_params)
      render json: @friends_going
    else
      render json: @friends_going.errors, status: :unprocessable_entity
    end
  end

  # DELETE /friends_goings/1
  def destroy
    @friends_going.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friends_going
      @friends_going = FriendsGoing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friends_going_params
      params.require(:friends_going).permit(:user_activity_id, :friends_id)
    end
end

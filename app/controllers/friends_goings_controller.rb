class FriendsGoingsController < ApplicationController
  

  # POST /friends_goings
  def create
    token  = request.headers['Authorization']
    user = User.validateUser(token)
    if user
      @friends_going = FriendsGoing.new(friends_going_params)
      if @friends_going.save
        render json: @friends_going, status: :created
      else
        render json: @friends_going.errors, status: :unprocessable_entity
      end
    else
      render json: {msg:'Unathorized'}, status: :bad_request
    end
  end

  

  # DELETE /friends_goings/1
  def destroy
    token  = request.headers['Authorization']
    user = User.validateUser(token)
    if user
      @friends_going = FriendsGoing.find_by(id: params[:id])
      if @friends_going
        @friends_going.destroy
        render json: {msg:" friend request deleted"}, status: :ok
      else
        render json: {msg:"No friend request found"}, status: :bad_request
      end
    else
      render json: {msg:"Unauthorized"}, status: :bad_request
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a list of trusted parameters through.
    def friends_going_params
      params.require(:friends_going).permit(:user_activity_id, :user_friend_id)
    end
end

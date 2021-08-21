class FriendsGoingsController < ApplicationController
  

  # POST /friends_goings
  def create
    token  = request.headers['Authorization']
    user = User.validateUser(token)
 
    if user
      friend = UserFriend.find(params[:user_friend_id])
      already_invited = FriendsGoing.find_by(user_activity_id: params[:user_activity_id], user_friend_id: params[:user_friend_id] )
      if already_invited
        render json: {msg: 'User already invited'}, status: :ok
      else
        @friends_going = FriendsGoing.new(user_activity_id: params[:user_activity_id], user_friend_id: params[:user_friend_id], status:params[:status],friend_id:friend.friend_id ) 
        if @friends_going.save
          render json: {msg:"Invitation send"}, status: :created
        else
          render json: @friends_going.errors, status: :unprocessable_entity
        end
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
      params.require(:friends_going).permit(:user_activity_id, :user_friend_id, :status)
    end
end

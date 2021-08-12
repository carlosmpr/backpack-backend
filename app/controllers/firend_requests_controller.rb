class FirendRequestsController < ApplicationController


def add_friend
  token  = request.headers['Authorization']
    user = User.validateUser(token)
    if user
     firend_request = FirendRequest.find_by(id:params[:firend_request])
     UserFriend.create(user_id: firend_request[:user_id], friend_id:firend_request[:user_invite_id])
     UserFriend.create(user_id: firend_request[:user_invite_id], friend_id:firend_request[:user_id])
      render json: {msg:"Friend added"}, status: :ok
    else
      render json: {msg:"Unauthorized"}, status: :bad_request
    end
end



  # POST /firend_requests
  def create
    token  = request.headers['Authorization']
    user = User.validateUser(token)
    if user
        @firend_request = FirendRequest.new(user_id:user["id"], user_invite_id: params[:user_invite_id])
        if @firend_request.save
          render json: @firend_request, status: :created, location: @firend_request
        else
          render json: @firend_request.errors, status: :unprocessable_entity
        end
      else
        render json: {msg:"Unauthorized"}, status: :bad_request
    end
  end


  # DELETE /firend_requests/1
  def destroy
    token  = request.headers['Authorization']
    user = User.validateUser(token)
    if user
        @firend_request = FirendRequest.find_by(id:params[:id])
        if @firend_request
          @firend_request.destroy
          render json: {msg:"Request deleted"}, status: :bad_request
        else
          render json: {msg:"No request found"}, status: :bad_request
        end
      else
        render json: {msg:"Unauthorized"}, status: :bad_request
      end
    
  end
    
   
end

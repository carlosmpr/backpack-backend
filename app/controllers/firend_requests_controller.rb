class FirendRequestsController < ApplicationController


def add_friend
  token  = request.headers['Authorization']
    user = User.validateUser(token)
    if user
     firend_request = FirendRequest.find_by(id:params[:firend_request])
     firend_request.status ="Acceptep"
     firend_request.save
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
        alreadyFriend = user.user_friends.find_by(friend_id:params[:user_invite_id])
        if alreadyFriend
          render json: {msg:"Already a Friend"}, status: :created
        else
          invitation  = FirendRequest.find_by(user_id:user["id"], user_invite_id: params[:user_invite_id])
          if invitation
            render json: {msg:"Invitation Already send"}, status: :created
          else  
              @firend_request = FirendRequest.new(user_id:user["id"], user_invite_id: params[:user_invite_id], status:"Pending")
            if @firend_request.save
              render json: {msg:"Invitation send"}, status: :created
          else
              render json: @firend_request.errors, status: :unprocessable_entity
          end
          end
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
          render json: {msg:"Request deleted"}, status: :ok
        else
          render json: {msg:"No request found"}, status: :bad_request
        end
      else
        render json: {msg:"Unauthorized"}, status: :bad_request
      end
    
  end
    
   
end

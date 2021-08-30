
require 'jwt'
class UsersController < ApplicationController

  def index
    token  = request.headers['Authorization']
    user = User.validateUser(token)
    if user 
      users = User.all
      filter_users = users.select{|item| item.id != user["id"]}
      render json: filter_users, status: :ok
    else
      render json: {msg:"Unauthorized"}, status: :bad_request
  end 
end


  def me
    token  = request.headers['Authorization']
    user  = User.validateUser(token)
    if user
    render json: user
    else
      render json: {msg:"bad request"}, status: :bad_request
  end
end


def my_activities
  token  = request.headers['Authorization']
  user = User.validateUser(token)
  if user
  render json: user.user_activities
  else
    render json: {msg:"bad request"}, status: :bad_request
end
end


def friends_goings
  token  = request.headers['Authorization']
  user = User.validateUser(token)
  if user
    findActivity = UserActivity.find(params[:id])
    render json: findActivity.friends_goings, status: :ok
  else
    render json: {msg:"bad request"}, status: :bad_request
  end
end


def my_invitations
  token  = request.headers['Authorization']
  user = User.validateUser(token)
  if user
    findActivities = UserActivity.first.friends_goings.where(user_friend_id: user.id)
    render json: findActivities.friends_goings, status: :ok
  else
    render json: {msg:"bad request"}, status: :bad_request
  end
end




def my_friends
  token  = request.headers['Authorization']
  user = User.validateUser(token)
  if user
    find_friends =  user.user_friends.map{|friend| {user:User.find(friend.friend_id).user, user_friend_id: friend.id}}
  render json: find_friends
  else
    render json: {msg:"bad request"}, status: :bad_request
end
end


  def create
    hmac_secret = 'my$ecretK3y'
    @user = User.new( email: params[:email],
      password:params[:password],
      name:params[:name], 
      last_name:params[:last_name],
      phone: params[:phone],
      swimming: params[:swimming],
      hiking: params[:hiking],
      walking: params[:walking],
      eating: params[:eating],
      touring: params[:eating],
      camping: params[:camping],
      featured_image: params[:featured_image]
    )
      
    if @user.save
      token = JWT.encode user_model(@user), hmac_secret, 'HS256'
      render json: {token: token}
    else
      render json: {msg:"Invalid credentials"}, status: :unprocessable_entity
    end
    
  end

  def login
    hmac_secret = 'my$ecretK3y'
    begin
      @user = User.find_by(email: params[:email])
      if @user.authenticate(params[:password])
        token = JWT.encode user_model(@user), hmac_secret, 'HS256'
        render json: {token: token}
      else
        render json: {msg:'Invalid credentials'}, status: :unprocessable_entity
      end
    rescue => exception
      render json: {msg:'Invalid credentials'}, status: :bad_request
    end

  end



  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    #Only allow a list of trusted parameters through.
   

    def user_model(user)
      userModel = {
        id: user.id,
        email: user.email,
        name:user.name, 
        last_name:user.last_name,
        phone: user.phone,
        swimming: user.swimming,
        hiking: user.hiking,
        walking: user.walking,
        eating: user.eating,
        touring: user.eating,
        camping: user.camping
      }
    end


  
end


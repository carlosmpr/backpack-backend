
require 'jwt'
class UsersController < ApplicationController

  def me
    user  = User.validateUser(params[:token])
    if user
    render json: user
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
      camping: params[:camping])
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
    def user_params
      params.require(:user).permit(:name, :last_name, :email, :phone, :password_digest, :swimming, :hiking, :walking, :eating, :touring, :camping)
    end

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


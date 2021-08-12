class UserActivitiesController < ApplicationController
  

  # POST /user_activities
  def create
    token  = request.headers['Authorization']
    user = User.validateUser(token)
    if user
    @user_activity = UserActivity.new(user_id:user["id"], activity_id: params[:activity_id], date:params[:date])
    if @user_activity.save
      render json: @user_activity, status: :created
    else
      render json: @user_activity.errors, status: :unprocessable_entity
    end
  else
    render json: {msg:'Unathorized'}, status: :bad_request
  end
end
 

  # DELETE /user_activities/1
  def destroy
    token  = request.headers['Authorization']
    user = User.validateUser(token)
    if user
      @user_activity = UserActivity.find_by(id:params[:id])
        if @user_activity
          @user_activity.destroy
          render json: {msg:' activity deleted'}, status: :ok
        else
          render json: {msg:'No activity found'}, status: :bad_request
        end
      else
        render json: {msg:'Unathorized'}, status: :bad_request
    end
  end




  
end

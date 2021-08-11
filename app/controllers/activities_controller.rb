class ActivitiesController < ApplicationController
  
  def details
    token  = request.headers['Authorization']
    user = User.validateUser(token)
    if user
      activity = Activity.find_by(id:params[:activity_id])
    render json: activity, serializer:ActivityDetailSerializer
    else
      render json: {msg:"Unauthorized"}
  end
end
  

  

 

  
end

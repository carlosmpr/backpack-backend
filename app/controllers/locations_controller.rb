class LocationsController < ApplicationController
  # GET /locations
  def index
    token  = request.headers['Authorization']
    user = User.validateUser(token)
    if user
      @locations = Location.all
      render json: @locations
    else
      render json: {msg:"Unauthorized"}
  end
end



  def show
    token  = request.headers['Authorization']
    user = User.validateUser(token)
    if user
      @locations = Location.find_by(id:params[:id])
      if @locations
        render json: @locations, serializer:LocationDetailsSerializer
      else
        render json: {msg:'No location found'}
      end
    else
      render json: {msg:"Unauthorized"}
  end
end


  

  
end

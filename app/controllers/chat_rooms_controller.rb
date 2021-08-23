class ChatRoomsController < ApplicationController
  before_action :set_chat_room, only: [:show, :update, :destroy]

  # GET /chat_rooms
  def index
    @chat_rooms = ChatRoom.all

    render json: @chat_rooms
  end

  # GET /chat_rooms/1
  def show
    render json: @chat_room
  end

  # POST /chat_rooms
  def create
    token  = request.headers['Authorization']
    user = User.validateUser(token)
  
    if user
      chat_room = ChatRoom.find_by(user_id:user.id, user_id2:params[:user_id2])
      friend_chat = ChatRoom.find_by(user_id:params[:user_id2], user_id2:user.id)
      if chat_room
        render json: chat_room
      elsif friend_chat
        render json: friend_chat
      else
        @chat_room = ChatRoom.new(user_id: user.id, user_id2:params[:user_id2])
        if @chat_room.save
          render json: @chat_room, status: :created, location: @chat_room
        else
          render json: @chat_room.errors, status: :unprocessable_entity
        end
      end
    else
      render json: {msg:"Unauthorized"}, status: :bad_request
    end
  end


  # PATCH/PUT /chat_rooms/1
  def update
    if @chat_room.update(chat_room_params)
      render json: @chat_room
    else
      render json: @chat_room.errors, status: :unprocessable_entity
    end
  end

  # DELETE /chat_rooms/1
  def destroy
    @chat_room.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chat_room
      @chat_room = ChatRoom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chat_room_params
      params.require(:chat_room).permit(:user_id, :user_id2)
    end
end

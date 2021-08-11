class MessageSerializer < ActiveModel::Serializer
  attributes :id, :chat_room_id, :user_id, :message
end

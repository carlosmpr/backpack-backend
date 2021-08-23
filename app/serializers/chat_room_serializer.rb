class ChatRoomSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user_id2
  has_many :messages
end

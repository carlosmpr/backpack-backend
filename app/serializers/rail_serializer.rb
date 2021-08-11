class RailSerializer < ActiveModel::Serializer
  attributes :id, :g, :friend_requests, :user_send_id, :user_invite_id
end

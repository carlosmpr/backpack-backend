class FriendsGoingSerializer < ActiveModel::Serializer
  attributes :id, :user_activity_id, :user_friend_id
end

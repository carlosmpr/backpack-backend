class FriendsGoingSerializer < ActiveModel::Serializer
  attributes :id, :user_activity_id, :friends_id
end

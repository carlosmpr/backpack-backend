class FriendsGoingSerializer < ActiveModel::Serializer
  attributes :id, :user_activity_id, :user_friend_id, :my_friend ,:status
  
  def my_friend
    user_friend= UserFriend.find(object.user_friend_id)
    my_friend = User.find(user_friend.friend_id)
    my_friend.user
  end
end

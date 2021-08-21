class UserFriendSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :friend_id, :my_friend

  def friend
    user = User.find(object.friend_id)
    user.user
  end
end

class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :last_name, :email, :phone, :swimming, :hiking, :walking, :eating, :touring, :camping,:featured_image, :avatar, :friend_request , :activity_invitation, :friends, :activities

  def featured_image
    if object.featured_image.attached?
      {
        url: rails_blob_url(object.featured_image)
      }
    end
  end


  def friends
    object.user_friends.count
  end


  def activities
    object.user_activities.count
  end


  def friend_request
  userInvites = FirendRequest.where(user_invite_id:object.id, status:'Pending')
   userInvitations = userInvites.map do |user| 
    userdata =User.find_by(id: user[:user_id])
    {id: user.id , users:userdata.user}
   end
  end


  def activity_invitation
    invitations = FriendsGoing.where(friend_id:object.id)
    activities = invitations.map do |invited| 
      activity =UserActivity.find(invited.user_activity_id)
      findActivity =Activity.find( activity.activity_id)
      user = User.find(activity.user_id)
      {date: activity.date , detail:findActivity, user:user, invitaion_id: invited.id , status: invited.status, join_activity: activity.id}
    end
    activities
  end
end

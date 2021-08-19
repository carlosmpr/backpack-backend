class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :last_name, :email, :phone, :swimming, :hiking, :walking, :eating, :touring, :camping,:featured_image, :avatar, :friend_request 

  def featured_image
    if object.featured_image.attached?
      {
        url: rails_blob_url(object.featured_image)
      }
    end
  end



  def friend_request
  userInvites = FirendRequest.where(user_invite_id:object.id, status:'Pending')
   userInvitations = userInvites.map do |user| 
    userdata =User.find_by(id: user[:user_id])
    {id: user.id , users:userdata.user}
   end
  end
end

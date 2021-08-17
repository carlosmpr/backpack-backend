class ActivityReviewSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :activity_id, :comment, :likes, :user
  def user
  image =  if object.user.featured_image.attached?
      {
        url: rails_blob_url(object.featured_image)
      } else 
        ""
     end
     
   {
      id: object.user.id,
     name: object.user.name,
     avatar: object.user.avatar,
     featured_image: image
   }
  end
end

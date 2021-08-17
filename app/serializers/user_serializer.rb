class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :last_name, :email, :phone, :swimming, :hiking, :walking, :eating, :touring, :camping,:featured_image, :avatar 

  def featured_image
    if object.featured_image.attached?
      {
        url: rails_blob_url(object.featured_image)
      }
    end
  end
end

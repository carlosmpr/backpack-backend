class ActivityReviewSerializer < ActiveModel::Serializer
  attributes :id, :activity_id, :user_id, :comment, :likes
end

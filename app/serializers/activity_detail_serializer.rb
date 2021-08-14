class ActivityDetailSerializer < ActiveModel::Serializer
  has_many :activity_reviews
end

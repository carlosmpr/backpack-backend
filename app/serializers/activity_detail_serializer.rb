class ActivityDetailSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description, :category, :state, :directions
  has_many :activity_reviews
end

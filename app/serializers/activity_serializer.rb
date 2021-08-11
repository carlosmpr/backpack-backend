class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description, :category, :state, :directions
end

class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :image
end

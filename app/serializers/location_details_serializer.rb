class LocationDetailsSerializer < ActiveModel::Serializer
  attributes :id, :name, :country
  has_many :activities
end

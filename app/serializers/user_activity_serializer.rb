class UserActivitySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :activity_id, :date
  belongs_to :activity

end

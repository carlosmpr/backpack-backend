class UserActivitySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :activity_id, :date, :friends_going_id
end

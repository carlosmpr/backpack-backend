class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :last_name, :email, :phone, :swimming, :hiking, :walking, :eating, :touring, :camping
end

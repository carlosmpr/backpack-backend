class UserActivity < ApplicationRecord
    belongs_to :user
    belongs_to :activity
    has_many :friends_goings
end

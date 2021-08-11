class FriendsGoing < ApplicationRecord
    belongs_to :user_activity
    belongs_to :user_friend
end

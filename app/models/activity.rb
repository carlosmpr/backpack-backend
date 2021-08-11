class Activity < ApplicationRecord
    belongs_to :location
    has_many :user_activities
    has_many :users, through: :user_activities
    has_many :activity_reviews
end

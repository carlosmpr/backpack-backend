class User < ApplicationRecord
    has_secure_password
    has_many :user_activities
    has_many :activities, through: :user_activities
    has_many :chat_rooms
    has_many :friend_requests
    has_many :user_friends
    has_one_attached :image
    validates :email, presence: true
    validates :email, uniqueness: { case_sensitive: true }


    def self.validateUser(token)
        begin
        hmac_secret = 'my$ecretK3y'
        decoded_token = JWT.decode token, hmac_secret, true, { algorithm: 'HS256' }
        user = decoded_token[0]
       database = User.find_by(email: user["email"])
        database
        rescue => exception
            false
        end

    end
end

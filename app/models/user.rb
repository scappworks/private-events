class User < ApplicationRecord
    has_secure_password

    has_many :events
    has_many :attended_events, through: :enrollments, source: :event

    def user_params
        params.require(:user).permit(:id, :username, :password_digest)
    end
end

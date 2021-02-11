class User < ApplicationRecord
    has_secure_password

    validates :name, :username, :email, :password, presence: { message: "Username and Email required" }
    validates :username, uniqueness: { message: "%{value} is already taken" }
    validates :email, uniqueness: { message: "%{value} already in use" }

    has_many :events
    has_many :enrollments
    has_many :attended_events, through: :enrollments, source: :event

    def user_params
        params.require(:user).permit(:id, :username, :password_digest)
    end
end

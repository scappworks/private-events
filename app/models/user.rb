class User < ApplicationRecord
    has_secure_password

    def user_params
        params.require(:user).permit(:id, :username, :password_digest)
    end
end

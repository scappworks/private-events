module SessionsHelper
    def signed_in?
        if current_user == nil
            false
        else
            true
        end
    end

    def deny_access
        flash[:notice] = "Please sign in"
        redirect_to root_path
    end
end

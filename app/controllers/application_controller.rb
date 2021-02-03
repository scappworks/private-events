class ApplicationController < ActionController::Base
    def check_if_logged_in
        deny_access unless signed_in?
    end
end

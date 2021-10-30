class ApplicationController < ActionController::Base

    def authenticate_user
        unless user_signed_in?
            redirect_to new_user_session_path, notice: "Nie jesteś zalogowany. Zaloguj się"
        end
    end    

end

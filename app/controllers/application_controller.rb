class ApplicationController < ActionController::Base
    
    protected

    def authorize_request(kind = nil)
        unless kind.include?(current_user.role)
            redirect_to trnposts_path, notice: "No estás autorizado para realizar esta acción"
        end
    end

    def after_sign_in_path_for(resource)
        trnposts_path
    end
end


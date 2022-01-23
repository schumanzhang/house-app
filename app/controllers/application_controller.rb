class ApplicationController < ActionController::Base
    def content_not_found
        render file: "#{Rails.root}/public/404.html", layout: true, status: :not_found
    end

    def user_error
        render file: "#{Rails.root}/public/422.html", layout: true, status: :bad_request
    end

    def user_conflict
        render file: "#{Rails.root}/public/409.html", layout: true, status: :conflict
    end

    def user_unauthorized
        render file: "#{Rails.root}/public/401.html", layout: true, status: :unauthorized
    end

    def user_forbidden
        render file: "#{Rails.root}/public/403.html", layout: true, status: :forbidden
    end
end

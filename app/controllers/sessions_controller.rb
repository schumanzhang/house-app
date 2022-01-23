class SessionsController < ApplicationController
    layout "application"

    def login
    end

    def signup
    end

    # POST /signup
    def create
        return user_conflict if Admin.where(username: params[:admin][:username]).count > 0

        @admin = Admin.new(create_params)

        if @admin.valid?
            @admin.save
            session[:username] = params[:admin][:username]

            redirect_to '/dashboard'
        else
            user_error
            session.delete :username
        end
    end

    # POST /login
    def authenticate
        # look up user in db
        # verify credentials
        # store userid in the session
        @admin = Admin.find_by(username: params[:admin][:username])

        # if either username or password does not correct
        if @admin.nil? || !@admin.check_admin(params[:admin][:password])
            user_unauthorized
            session.delete :username
        else
            session[:username] = params[:admin][:username]
            redirect_to '/dashboard'
        end  
    end 

    def destroy
        session.delete :username
    end

    private

    def create_params
        params.require(:admin).permit(:firstname, :lastname, :username, :password)
    end

    def auth_params
        params.require(:admin).permit(:username, :password)
    end

end
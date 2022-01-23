class SessionsController < ApplicationController
    layout "application"

    def login
    end

    def signup
    end

    # POST /signup
    def create
       
        session[:username] = params[:username]

        redirect_to '/dashboard'

        # for logout you just delete the cookie
    end

    # POST /login
    def authenticate
        # look up user in db
        # verify credentials
        # store userid in the session

        redirect_to '/dashboard'
    end 

    def destroy
        session.delete :username
    end

end
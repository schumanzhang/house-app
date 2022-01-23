class HousesController < ApplicationController
    before_action :set_house, only: %i[ edit update destroy ]
    before_action :require_login
    skip_before_action :require_login, only: [:index, :search]

    layout "main"

    def dashboard
        @houses = House.all
        @agents = Agent.all
        render layout: "admin"
    end

    def index
        # start with
        # @houses = House.all

        @houses = House.where("bed >= ? AND bath >= ? AND garage >= ? AND size >= ? ", 
            extract_value(params, "bed"), extract_value(params, "bath"), extract_value(params, "car"), extract_value(params, "size"))

        # NOTE you can inject other models in here as well 
    end

    def new

        render layout: "admin"
    end

    def edit

        render layout: "admin"
    end

    def create

    end

    def update

    end

    def destroy
        @house.destroy
    end

    # search form submission
    def search
        puts "search"
        puts params[:search][:bed]

        redirect_to root_url(search_params)
    end

    private

    def set_house
        @house = House.find(params[:id])
      end

    def extract_value(params, key)
        val = params.key?(key) && params[key] != "" ? params[key].to_i : 0
        val
    end

    def search_params
        params.require(:search).permit(:bed, :bath, :car, :size)
    end

    def require_login
        return user_forbidden unless session.include? :username
    end

end
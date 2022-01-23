class HousesController < ApplicationController
    layout "main"

    def dashboard
    end

    def index
        puts "index"
        puts params

        # start with
        # @houses = House.all

        @houses = House.where("bed >= ? AND bath >= ? AND garage >= ? AND size >= ? ", 
            extract_value(params, "bed"), extract_value(params, "bath"), extract_value(params, "car"), extract_value(params, "size"))

        # NOTE you can inject other models in here as well 
    end

    # search form submission
    def search
        puts "search"
        puts params[:search][:bed]

        redirect_to root_url(search_params)
    end

    private

    def extract_value(params, key)
        val = params.key?(key) && params[key] != "" ? params[key].to_i : 0
        val
    end

    def search_params
        params.require(:search).permit(:bed, :bath, :car, :size)
    end

end
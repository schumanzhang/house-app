class InspectionsController < ApplicationController
    layout "main"


    def new
    end

    # POST /inspections
    def create
        @inspection = Inspection.new(create_params)
        @inspection.save
        redirect_to root_url
    end

    private
    def create_params
        params.require(:inspection).permit(:house_id, :name, :day, :comment)
    end
end
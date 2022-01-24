class InspectionsController < ApplicationController
    layout "main"

    def new
    end

    # POST /inspections
    def create
        @inspection = Inspection.new(create_params)

        puts params
        @inspection.house_id = params[:house_id]
        
        if @inspection.valid?
            @inspection.save
            redirect_to root_url
        else
            user_error
        end  
    end

    private

    def create_params
        params.require(:inspection).permit(:name, :day, :comment, :contact)
    end
end
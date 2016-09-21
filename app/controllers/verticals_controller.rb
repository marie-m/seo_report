class VerticalsController < ApplicationController
    
    def index
        @verticals = Vertical.order(:name)
    end
    
    def new
        @vertical = Vertical.new
    end
    
    
    def create
        @vertical = Vertical.new(vertical_params)
        
        if @vertical.save
            flash[:success] = "Vertical added."
            redirect_to settings_path
        else
            flash[:alert] = "Error occured, vertical not added."
            redirect_to settings_path
        end
    end
    
    
    private
        def vertical_params
            params.require(:vertical).permit(:name, :icon)
        end
    
    
end
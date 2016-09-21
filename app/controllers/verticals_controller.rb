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
    
    def edit
        @vertical = Vertical.find( params[:id] )
    end
    
    def update
        @vertical = Vertical.find( params[:id] )
        
        if @vertical.update_attributes(vertical_params)
            flash[:success] = "Vertical updated"
            redirect_to verticals_path
        else
            flash[:alert] = "Vertical not updated"
            redirect_to verticals_path
        end
    end

    def destroy 
        @vertical = Vertical.find( params[:id] )
        @vertical.destroy
        
        flash[:success] = "Vertical deleted"
        redirect_to verticals_path
    end
    
    
    private
        def vertical_params
            params.require(:vertical).permit(:name, :icon)
        end
    
    
end
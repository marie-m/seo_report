class BusinessesController < ApplicationController
    
    def index
        @businesses = Business.order(:id)
    end
    
    def new
        @business = Business.new
    end
    
    def create
        @business = Business.new(business_params)
        
        if @business.save
            flash[:success] = "Business added."
            redirect_to businesses_url
        else
            flash[:alert] = "Error occured, business not added."
            redirect_to businesses_url
        end
    end
    
    def show
        @business = Business.find( params[:id] )
    end
    
    def edit
        @business = Business.find( params[:id] )
    end
    
    def update
        @business = Business.find( params[:id] )
        
        if @business.update_attributes(business_params)
            flash[:success] = "Profile updated"
            redirect_to @business
        else
            flash[:alert] = "Profile not updated"
            redirect_to @business
        end
    end

    def destroy
        Business.find(params[:id]).destroy
        flash[:success] = "Business deleted"
        redirect_to businesses_url
    end
    
    private
        def business_params
            params.require(:business).permit(:name, :address, :url)
        end
    
end
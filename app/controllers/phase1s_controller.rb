class Phase1sController < ApplicationController
    
    def index
        @phase1s = Phase1.order(:id).reverse
    end
    
    def new
        @business = Business.find(params[:business_id])
        @phase1 = Phase1.new
    end
    
    def create
        @business = Business.find(params[:business_id])
        @phase1 = @business.phase1s.new(phase1_params)
        
        if @phase1.save
            flash[:success] = "Phase 1 added."
        else
            flash[:alert] = "Error occured, phase 1 not added."
        end
        
        redirect_to business_path(@business)
    end
    
    def show
        @business = Business.find(params[:business_id])
        @phase1 = Phase1.find( params[:id] )
    end
    
    def edit
        @business = Business.find(params[:business_id])
        @phase1 = Phase1.find( params[:id] )
    end
    
    def update
        @business = Business.find(params[:business_id])
        @phase1 = Phase1.find( params[:id] )
        
        if @phase1.update_attributes(phase1_params)
            flash[:success] = "Phase 1 updated"
        else
            flash[:alert] = "Phase 1 not updated"
        end
        
        redirect_to  business_phase1_path(@business, @phase1)
    end
    
    def destroy
        @phase1 = Phase1.find( params[:id] )
        ownerBusiness = @phase1.business_id
        
        Phase1.find(params[:id]).destroy
        flash[:success] = "Phase 1 entry deleted"
        redirect_to business_path(ownerBusiness)
    end
    
    
    private
        def phase1_params
            params.require(:phase1).permit(:mobileFriendly, :wwwOrNot, :napFormat, :robotsTXT, :business_id)
        end
end
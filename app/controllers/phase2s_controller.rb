class Phase2sController < ApplicationController
    
    def index
        @phase2s = Phase2.order(:id).reverse
    end
    
    def new
        @business = Business.find(params[:business_id])
        @phase2 = Phase2.new
    end
    
    def create
        @business = Business.find(params[:business_id])
        @phase2 = @business.phase2s.new(phase2_params)
        
        if @phase2.save
            flash[:success] = "Phase 2 added."
        else
            flash[:alert] = "Error occured, phase 2 not added."
        end
        
        redirect_to business_path(@business)
    end
    
    def show
        @business = Business.find(params[:business_id])
        @phase2 = Phase2.find( params[:id] )
    end
    
    def edit
        @business = Business.find(params[:business_id])
        @phase2 = Phase2.find( params[:id] )
    end
    
    def update
        @business = Business.find(params[:business_id])
        @phase2 = Phase2.find( params[:id] )
        
        if @phase2.update_attributes(phase2_params)
            flash[:success] = "Phase 2 updated"
        else
            flash[:alert] = "Phase 2 not updated"
        end
        
        redirect_to  business_phase2_path(@business, @phase2)
    end
    
    def destroy
        @phase2 = Phase2.find( params[:id] )
        ownerBusiness = @phase2.business_id
        
        Phase2.find(params[:id]).destroy
        flash[:success] = "Phase 2 entry deleted"
        redirect_to business_path(ownerBusiness)
    end
    
    
    private
        def phase2_params
            params.require(:phase2).permit(:copyHasKeywords, :freshContent, :imagesNamed, :socialMedia, :googleAnalytics, :webmasterTools, :localBusiness)
        end
end
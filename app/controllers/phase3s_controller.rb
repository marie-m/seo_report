class Phase3sController < ApplicationController
    
    def index
        @phase3s = Phase3.order(:id).reverse
    end
    
    def new
        @business = Business.find(params[:business_id])
        @phase3 = Phase3.new
    end
    
    def create
        @business = Business.find(params[:business_id])
        @phase3 = @business.phase3s.new(phase3_params)
        
        if @phase3.save
            flash[:success] = "Phase 3 added."
        else
            flash[:alert] = "Error occured, phase 3 not added."
        end
        
         redirect_to business_path(@business)
    end
    
    def show
        @business = Business.find(params[:business_id])
        @phase3 = Phase3.find( params[:id] )
        
    end
    
    def edit
        @business = Business.find(params[:business_id])
        @phase3 = Phase3.find( params[:id] )
    end
    
    def update
        @business = Business.find(params[:business_id])
        @phase3 = Phase3.find( params[:id] )
        
        if @phase3.update_attributes(phase3_params)
            flash[:success] = "Phase 3 updated"
        #     redirect_to @phase3
        else
            flash[:alert] = "Phase 3 not updated"
        #     redirect_to @phase3
        end
        
        redirect_to  business_phase3_path(@business, @phase3)
    end
    
    def destroy
        @phase3 = Phase3.find( params[:id] )
        ownerBusiness = @phase3.business_id
        
        Phase3.find(params[:id]).destroy
        flash[:success] = "Phase 3 entry deleted"
        redirect_to business_path(ownerBusiness)
    end
    
    private
        def phase3_params
            params.require(:phase3).permit(:xmlSitemap, :visitorSitemap,  :internalAudit, :contactForm, :map)
        end
end
    
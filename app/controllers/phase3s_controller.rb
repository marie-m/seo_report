class Phase3sController < ApplicationController
    
    def index
        @phase3s = Phase3.order(:id).reverse
    end
    
    def new
        @phase3 = Phase3.new
    end
    
    def create
         @phase3 = Phase3.new(phase3_params)
        
        if @phase3.save
            flash[:success] = "Phase 3 added."
            redirect_to business_path(@phase3.business_id)
        else
            flash[:alert] = "Error occured, phase 3 not added."
            redirect_to business_path(@phase3.business_id)
        end
    end
    
    def show
        @phase3 = Phase3.find( params[:id] )
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
            params.require(:phase3).permit(:xmlSitemap, :visitorSitemap,  :internalAudit, :externalAudit, :contactForm, :map, :business_id)
        end
end
    
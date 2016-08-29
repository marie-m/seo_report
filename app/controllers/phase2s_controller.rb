class Phase2sController < ApplicationController
    
    def index
        @phase2s = Phase2.order(:id).reverse
    end
    
    def new
        @phase2 = Phase2.new
    end
    
    def create
         @phase2 = Phase2.new(phase2_params)
        
        if @phase2.save
            flash[:success] = "Phase 2 added."
            redirect_to business_path(@phase2.business_id)
        else
            flash[:alert] = "Error occured, phase 2 not added."
            redirect_to business_path(@phase2.business_id)
        end
    end
    
    def show
        @phase2 = Phase2.find( params[:id] )
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
            params.require(:phase2).permit(:seoFriendly, :copyHasKeywords, :freshContent, :imagesNamed, :blackHatFree, :goodLoading, :socialMedia, :webcrawlerFirendly, :googleAnalytics, :webmasterTools, :localBusiness, :business_id)
        end
end
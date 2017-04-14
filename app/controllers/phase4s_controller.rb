class Phase4sController < ApplicationController
    
    def index
        @phase4s = Phase4.order(:id).reverse
    end
    
    def new
        @business = Business.find(params[:business_id])
        @phase4= Phase4.new
    end
    
    def create
        @business = Business.find(params[:business_id])
        @phase4 = @business.phase4s.new(phase4_params)
        
        if @phase4.save
            flash[:success] = "Phase 4 added."
        else
            flash[:alert] = "Error occured, phase 4 not added."
        end
        
        redirect_to business_path(@business)
    end
    
    def show
        @business = Business.find(params[:business_id])
        @phase4 = Phase4.find( params[:id] )
    end
    
    def edit
        @business = Business.find(params[:business_id])
        @phase4 = Phase4.find( params[:id] )
    end
    
    def update
        @business = Business.find(params[:business_id])
        @phase4 = Phase4.find( params[:id] )
        
        if @phase4.update_attributes(phase4_params)
            flash[:success] = "Phase 4 updated"
        else
            flash[:alert] = "Phase 4 not updated"
        end
        
        redirect_to  business_phase4_path(@business, @phase4)
    end
    
    def destroy
        @phase4 = Phase4.find( params[:id] )
        ownerBusiness = @phase4.business_id
        
        Phase4.find(params[:id]).destroy
        flash[:success] = "Phase 4 entry deleted"
        redirect_to business_path(ownerBusiness)
    end
    
    private
        def phase4_params
            params.require(:phase4).permit(:copyHasKeywords,  :freshContent, :imagesNamed, :socialMedia, :googleAnalytics, :webmasterTools, :localBusiness, :optimized, :shortURL, :blackHatFree, :titleHasKeywords, :xmlSitemap, :visitorSitemap, :internalAudit, :contactForm, :map, :favicon, :flashFree, :conversionOp)
        end
end
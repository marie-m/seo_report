class Phase1sController < ApplicationController
    
    def index
        @phase1s = Phase1.order(:id).reverse
    end
    
    def new
        @phase1 = Phase1.new
    end
    
    def create
         @phase1 = Phase1.new(phase1_params)
        
        if @phase1.save
            flash[:success] = "Phase 1 added."
            redirect_to @phase1
        else
            flash[:alert] = "Error occured, phase 1 not added."
            redirect_to business_path(@phase1.business_id)
        end
    end
    
    def show
        @phase1 = Phase1.find( params[:id] )
    end
    
    def edit
        @phase1 = Phase1.find( params[:id] )
    end
    
    def update
        @phase1 = Phase1.find( params[:id] )
        
        if @phase1.update_attributes(phase1_params)
            flash[:success] = "Phase 1 updated"
            redirect_to @phase1
        else
            flash[:alert] = "Phase 1 not updated"
            redirect_to @phase1
        end
    end
    
    def destroy
        @phase1 = Phase1.find( params[:id] )
        ownerBusiness = @phase1.business_id
        
        @phase1.destroy
        flash[:success] = "Phase 1 entry deleted"
        redirect_to business_path(ownerBusiness)
    end
    
    
    private
        def phase1_params
            params.require(:phase1).permit(:mobileFriendly, :wwwOrNot, :napFormat, :robotsTXT, :business_id)
        end
end
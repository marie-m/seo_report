class DetailsController < ApplicationController
    
    def new
        @detail = Detail.new
    end
    
    def create
         @detail = Detail.new(detail_params)
        
        if @detail.save
            flash[:success] = "Page details added."
            redirect_to phase1_path(@detail.phase1_id)
        else
            flash[:alert] = "Error occured, page details not added."
            redirect_to phase1_path(@detail.phase1_id)
        end
    end
    
    def show
        @detail = Detail.find( params[:id] )
    end
    
    def destroy
        @detail = Detail.find( params[:id] )
        ownerPhase1 = @detail.phase1_id
        
        Detail.find(params[:id]).destroy
        flash[:success] = "PPage details entry deleted"
        redirect_to  phase1_path(ownerPhase1)
    end
    
    
    private
        def detail_params
            params.require(:detail).permit(:pageName, :pageTitle, :pageDescript, :h1Tags, :h2Tags, :phase1_id)
        end
    
    
end
class HeadersController < ApplicationController
    
    def new
        @business = Business.find(params[:business_id])
        @phase1 = Phase1.find(params[:phase1_id])
        
        @header = Header.new
    end
    
    def create
        @business = Business.find(params[:business_id])
        @phase1 = Phase1.find(params[:phase1_id])
        
       resultString = "false"
        
        params[:headers].each do |headers_params|
            @header = Header.new()
            
            @header.pageName = headers_params[0]['pageName']
            @header.pageTitle = headers_params[0]['pageTitle']
            @header.pageDescript = headers_params[0]['pageDescript']
            @header.h1Tags = headers_params[0]['h1Tags']
            @header.h2Tags = headers_params[0]['h2Tags']
            
            # if @header.save
            # else
            #     errorString = errorString + "fail"
            # end
            
        end
        
        # if errorString.length
        flash[:alert] = "#{resultString}"
        
        
        redirect_to business_phase1_path(@business, @phase1)

    
    end
    
    def show
    end
    
    
    private
        def header_params
            params.require(:header).permit(:pageName, :pageTitle, :pageDescript, :h1Tags, :h2Tags)
        end
    
end
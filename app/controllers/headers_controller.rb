class HeadersController < ApplicationController
    
    def new
        @business = Business.find(params[:business_id])
        @phase1 = Phase1.find(params[:phase1_id])
        
        @header = Header.new
    end
    
    def create
        @business = Business.find(params[:business_id])
        @phase1 = Phase1.find(params[:phase1_id])
        
       #resultString = "false"
        
        params[:headers].each do |headers_params|
            @header = @phase1.headers.new()
            
            @header.pageName = headers_params[1]['pageName']
            @header.pageTitle = headers_params[1]['pageTitle']
            @header.pageDescript = headers_params[1]['pageDescript']
            @header.h1Tags = headers_params[1]['h1Tags']
            @header.h2Tags = headers_params[1]['h2Tags']
            
            @header.business_id = @business.id
            
            @header.save
            #else
            #    errorString = errorString + "fail"
            #end
            
        end
        
        # if errorString.length 
        #flash[:alert] = "#{resultString}"
        
        
        redirect_to business_phase1_path(@business, @phase1)

    
    end
    
    def show
    end
    
    def edit
        @header = Header.find(params[:id])
        @business = Business.find(@header.business_id)
        @phase1 = Phase1.find(@header.phase1_id)
    end
    
    def update
        @header = Header.find(params[:id])
        @business = Business.find(@header.business_id)
        @phase1 = Phase1.find(@header.phase1_id)
        
        if @header.update_attributes(header_params)
            flash[:success] = "Page updated"
        else
            flash[:alert] = "Page not updated"
        end
        
        redirect_to  business_phase1_path(@business, @phase1)
    end
    
    def destroy
        @header = Header.find(params[:id])
        @business = Business.find(@header.business_id)
        @phase1 = Phase1.find(@header.phase1_id)
        
        @header.destroy
        flash[:success] = "Page entry deleted"
        redirect_to business_phase1_path(@business, @phase1)
    end
    
    
    private
        def header_params
            params.require(:header).permit(:pageName, :pageTitle, :pageDescript, :h1Tags, :h2Tags)
        end
    
end
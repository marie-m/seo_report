class HeadersController < ApplicationController
    
    def new
        @business = Business.find(params[:business_id])

        @header = Header.new
    end
    
    def create

    
    end
    
    def show
    end
    
end
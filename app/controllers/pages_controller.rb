class PagesController < ApplicationController
    def home
        render :layout => 'login'
    end
    
    def dashboard
    end
    
    def help
    end
    
    def display
        render :layout => 'report'
    end
end

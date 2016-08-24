class ContactsController < ApplicationController
    def index
        @contacts = Contact.order(:id)
    end
    
    def new
        @contact = Contact.new
    end
    
    def create
        @contact = Contact.new(contact_params)
        
        if @contact.save
            flash[:success] = "Message sent."
            redirect_to new_contact_path
        else
            flash[:alert] = "Error occured, message not sent."
            redirect_to new_contact_path
        end
    end
    
    def show
        @contact = Contact.find( params[:id] )
    end
    
  
    def destroy
        Contact.find(params[:id]).destroy
        flash[:success] = "Contact entry deleted"
        redirect_to contacts_url
    end
    
    private
        def contact_params
            params.require(:contact).permit(:name, :email, :comments)
        end
end
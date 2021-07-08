class ContactsController < ApplicationController

    def index
        @contacts = Contact.all
    end
    
    def new
        @contact = Contact.new
    end

    def create
        contact_params = params.require(:contact).permit(:name, :birthdate)
        @contact = Contact.new(contact_params)
        if @contact.save
            redirect_to contacts_path
        else 
            render :new
        end
    end

    def edit
        @contact = Contact.find(params[:id])
    end

    # def destroy
    #     @contact = Contact.find(params[:id])
    #     @contact.destroy
    #     redirect_to contacts_path
    # end
end
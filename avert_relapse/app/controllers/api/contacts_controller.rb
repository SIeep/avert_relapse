class Api::ContactsController < ApplicationController
  before_action :authenticate_user
  
  def index
    @contacts = Contact.all
    
    if current_user
      @contacts = current_user.account.contacts
      render "index.json.jbuilder"
    else
      render json: []
    end
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    @contact.email = params[:email] || @contact.email
    @contact.save
    render "show.json.jbuilder"
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @contact = Contact.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone_number: params[:phone_number],
      email: params[:email],
      account_id: current_user.account.id
    )
    render "show.json.jbuilder"
  end

  def delete
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    render json: {message: "Contact successfully deleted."}
  end
end

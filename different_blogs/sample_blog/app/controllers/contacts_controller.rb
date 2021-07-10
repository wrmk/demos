class ContactsController < ApplicationController

  def new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.valid?
      @contact.save
    else
      render action: 'new'
    end
  end

  # метод в котором указываем какие параметры со страницы можно взять
  # в private чтобы к нему нельзя было обратиться извне
  private
  
  def contact_params
    params.require(:contact).permit(:email, :message)
  end


end

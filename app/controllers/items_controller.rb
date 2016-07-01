class ItemsController < ApplicationController
  def index
  end

  def create
    @item = Item.new
    #@item = @items.build(params.require(:item).permit(:name, :user)) #written to illustrate the actions of the previous command.
    @item.user = current_user

    # The action should create a new item associated with a user.
    if @item.save
      flash[:notice] = "Item saved successfully."
      redirect_to [@index] #redirects out of form to completed view.
    else
      flash[:alert] = "Item failed to save."
      render :new # clears the form to start over.
    end

    #the following is ajax scripting. Incorporates Javascript & Html in formatting?
    #respond_to do |format|
    #  format.html
    #  format.js
    #end
  end

  def show
  end
end

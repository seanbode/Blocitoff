class ItemsController < ApplicationController
  def index
    @items = current_user.items
  end

  def create
    @item = current_user.items.build(params.require(:item).permit(:name))

    # The action should create a new item associated with a user.
    if @item.save
      flash[:notice] = "Item saved successfully."
      redirect_to items_path #redirects out of form to completed view.
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

  def new
    @item = Item.new
  end

  def show
  end
end

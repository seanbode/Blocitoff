class ItemsController < ApplicationController
  def index
    @items = current_user.items
  end

  def create
    @item = current_user.items.build(post_params)

    if @item.save
      flash[:notice] = "Item saved successfully."
      redirect_to items_path
    else
      flash[:alert] = "Item failed to save."
      render :new
    end
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def show
  end

  def update
    @item = Item.find(params[:id])
    @item.assign_attributes(post_params)

    if @item.save
      flash[:notice] = "Item saved successfully."
      redirect_to items_path
    else
      flash[:alert] = "Item failed to save."
      render :new
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      flash[:notice] = "Item was deleted successfully."
    else
      flash[:now] = "There was an error deleting the post."
    end
    redirect_to items_path
  end

private

  def post_params
    params.require(:item).permit(:name)
  end
end

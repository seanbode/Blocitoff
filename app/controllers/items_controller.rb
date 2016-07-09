class ItemsController < ApplicationController
  def index
    @items = current_user.items.order_by_created_at
  end

  def create
    @item = current_user.items.build(item_params)

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

  def update
    @item = Item.find(params[:id])
    @item.assign_attributes(item_params)

    if @item.update(item_params)
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

  def item_params
    params.require(:item).permit(:name, :completed)
  end
end

class ItemsController < ApplicationController
  def create
    item = current_user.list.items.create(item_params)

    if !item.persisted?
      flash[:alert] = item.errors.messages
    end

    redirect_to root_path
  end

  def update
    item.update_attributes(item_params)
    redirect_to root_path
  end

  def destroy
    item.destroy
    redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :completed, :date_completed)
  end

  def item
    Item.find(params[:id])
  end
end

class ItemsController < ApplicationController
  def create
    item = current_user.list.items.create(items_params)
    redirect_to root_path
  end

  private

  def items_params
    params.require(:item).permit(:name)
  end
end

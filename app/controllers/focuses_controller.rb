class FocusesController < ApplicationController
  before_action :ensure_logged_in

  def create
    current_user.list.focus_on(item)
    redirect_to root_path
  end

  def destroy
    current_user.list.unfocus
    redirect_to root_path
  end

  private

  def item
    Item.find(params[:id])
  end
end

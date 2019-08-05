class DashboardsController < ApplicationController
  def show
    @list = current_user.list
    @item = Item.new
  end
end

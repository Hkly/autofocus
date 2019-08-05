class DashboardsController < ApplicationController
  before_action :ensure_logged_in
  def show
    @list = current_user.list
    @item = Item.new
  end
end

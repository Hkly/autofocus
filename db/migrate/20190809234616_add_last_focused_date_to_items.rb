class AddLastFocusedDateToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :last_focused_date, :datetime
  end
end

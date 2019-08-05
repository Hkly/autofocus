class AddDateCompletedToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :date_completed, :datetime
  end
end

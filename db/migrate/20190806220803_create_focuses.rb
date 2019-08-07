class CreateFocuses < ActiveRecord::Migration[5.2]
  def change
    create_table :focuses do |t|
      t.references :list, foreign_key: true, index: { unique: true}
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end

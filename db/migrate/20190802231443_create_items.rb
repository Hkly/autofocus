class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :list, foreign_key: true
      t.string :name, null: false
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end

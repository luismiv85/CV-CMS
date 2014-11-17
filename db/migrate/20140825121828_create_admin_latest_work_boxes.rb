class CreateAdminLatestWorkBoxes < ActiveRecord::Migration
  def change
    create_table :admin_latest_work_boxes do |t|
      t.string :title
      t.text :text
      t.string :icon
      t.references :latest_work, index: true

      t.timestamps
    end
  end
end

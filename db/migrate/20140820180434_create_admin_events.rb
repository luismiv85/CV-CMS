class CreateAdminEvents < ActiveRecord::Migration
  def change
    create_table :admin_events do |t|
      t.string :year
      t.string :event
      t.references :about_me, index: true

      t.timestamps
    end
  end
end

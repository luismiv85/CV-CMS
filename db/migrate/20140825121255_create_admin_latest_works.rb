class CreateAdminLatestWorks < ActiveRecord::Migration
  def change
    create_table :admin_latest_works do |t|
      t.string :title
      t.string :subtitle

      t.timestamps
    end
  end
end

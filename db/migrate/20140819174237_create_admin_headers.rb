class CreateAdminHeaders < ActiveRecord::Migration
  def change
    create_table :admin_headers do |t|
      t.string :name
      t.string :facebook
      t.string :twitter
      t.string :linkedin
      t.string :google

      t.timestamps
    end
  end
end

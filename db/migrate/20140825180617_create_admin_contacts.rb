class CreateAdminContacts < ActiveRecord::Migration
  def change
    create_table :admin_contacts do |t|
      t.string :title
      t.string :name
      t.string :address
      t.string :address2
      t.string :tlf

      t.timestamps
    end
  end
end

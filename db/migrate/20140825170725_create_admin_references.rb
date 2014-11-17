class CreateAdminReferences < ActiveRecord::Migration
  def change
    create_table :admin_references do |t|
      t.string :title
      t.string :subtitle

      t.timestamps
    end
  end
end

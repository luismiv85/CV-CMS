class CreateAdminProjects < ActiveRecord::Migration
  def change
    create_table :admin_projects do |t|
      t.string :name
      t.string :url
      t.references :reference

      t.timestamps
    end
  end
end

class CreateAdminAboutMes < ActiveRecord::Migration
  def change
    create_table :admin_about_mes do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end

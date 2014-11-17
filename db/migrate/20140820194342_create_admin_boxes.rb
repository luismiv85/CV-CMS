class CreateAdminBoxes < ActiveRecord::Migration
  def change
    create_table :admin_boxes do |t|
      t.string :title
      t.text :text
      t.references :about_me, index: true

      t.timestamps
    end

    add_column :admin_about_mes, :title_what_i_do, :string
    add_column :admin_about_mes, :sub_title_what_i_do, :string
  end
end

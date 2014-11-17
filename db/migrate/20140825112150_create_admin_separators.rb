class CreateAdminSeparators < ActiveRecord::Migration
  def change
    create_table :admin_separators do |t|
      t.text :text
      t.string :author

      t.timestamps
    end
  end
end

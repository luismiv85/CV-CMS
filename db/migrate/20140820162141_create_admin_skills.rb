class CreateAdminSkills < ActiveRecord::Migration
  def change
    create_table :admin_skills do |t|
      t.string :skill
      t.string :icon
      t.references :header, index: true

      t.timestamps
    end
  end
end

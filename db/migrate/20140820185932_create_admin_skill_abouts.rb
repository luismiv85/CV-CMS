class CreateAdminSkillAbouts < ActiveRecord::Migration
  def change
    create_table :admin_skill_abouts do |t|
      t.integer :percent
      t.string :skill
      t.references :about_me, index: true

      t.timestamps
    end
  end
end

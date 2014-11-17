class AddAttachmentImageToAdminProjects < ActiveRecord::Migration
  def self.up
    change_table :admin_projects do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :admin_projects, :image
  end
end

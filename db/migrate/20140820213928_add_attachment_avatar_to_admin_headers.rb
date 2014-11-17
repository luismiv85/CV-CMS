class AddAttachmentAvatarToAdminHeaders < ActiveRecord::Migration
  def self.up
    change_table :admin_headers do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :admin_headers, :avatar
  end
end

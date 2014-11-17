class AddAttachmentImage3ToLatestWorks < ActiveRecord::Migration
  def self.up
    change_table :admin_latest_works do |t|
      t.attachment :image3
    end
  end

  def self.down
    remove_attachment :admin_latest_works, :image3
  end
end

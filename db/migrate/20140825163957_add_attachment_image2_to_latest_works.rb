class AddAttachmentImage2ToLatestWorks < ActiveRecord::Migration
  def self.up
    change_table :admin_latest_works do |t|
      t.attachment :image2
    end
  end

  def self.down
    remove_attachment :admin_latest_works, :image2
  end
end

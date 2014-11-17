class AddAttachmentImageToBoxes < ActiveRecord::Migration
  def self.up
    change_table :admin_boxes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :boxes, :image
  end
end

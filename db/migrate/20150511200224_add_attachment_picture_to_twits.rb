class AddAttachmentPictureToTwits < ActiveRecord::Migration
  def self.up
    change_table :twits do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :twits, :picture
  end
end

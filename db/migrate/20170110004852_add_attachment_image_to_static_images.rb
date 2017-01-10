class AddAttachmentImageToStaticImages < ActiveRecord::Migration
  def self.up
    change_table :static_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :static_images, :image
  end
end

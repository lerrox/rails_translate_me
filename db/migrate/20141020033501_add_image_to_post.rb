class AddImageToPost < ActiveRecord::Migration

  def self.up
    add_attachment 'content.posts', :image
  end

  def self.down
    remove_attachment 'content.posts', :image
  end

end

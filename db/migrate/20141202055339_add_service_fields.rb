class AddServiceFields < ActiveRecord::Migration
  def up
    add_column 'content.services', :url, :string
  end

  def down
    remove_column 'content.services', :url
  end
end

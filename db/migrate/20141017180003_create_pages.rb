class CreatePages < ActiveRecord::Migration
  def up
    execute "CREATE SCHEMA content"
    create_table 'content.pages' do |t|
      t.string :name
      t.string :title
      t.string :header
      t.text :body
      t.timestamps
    end
  end

  def down
    drop_table 'content.pages'
    execute "DROP SCHEMA content"
  end
end

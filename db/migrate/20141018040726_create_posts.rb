class CreatePosts < ActiveRecord::Migration
  def change
    create_table 'content.posts' do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

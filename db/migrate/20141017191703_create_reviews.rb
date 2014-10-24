class CreateReviews < ActiveRecord::Migration
  def up
    create_table 'content.clients_reviews' do |t|
      t.text :body
      t.string :name
      t.string :position
      t.string :organization
      t.timestamps
    end
  end

  def down
    drop_table 'content.reviews'
  end
end

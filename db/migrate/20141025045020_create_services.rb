class CreateServices < ActiveRecord::Migration
  def change
    create_table 'content.services' do |t|
      t.string :title
      t.text :body
      t.string :icon
      t.timestamps
    end
  end
end

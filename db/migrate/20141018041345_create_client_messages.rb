class CreateClientMessages < ActiveRecord::Migration
  def change
    create_table 'content.client_messages' do |t|
      t.string :name
      t.string :email
      t.string :message

      t.timestamps
    end
  end
end

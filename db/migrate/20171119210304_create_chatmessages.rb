class CreateChatmessages < ActiveRecord::Migration[5.1]
  def change
    create_table :chatmessages do |t|
      t.text :body
      t.timestamps
    end
  end
end

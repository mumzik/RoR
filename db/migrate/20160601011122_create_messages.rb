class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :reciever, index: true, foreign_key: true, null: false
      t.references :sender, index: true, foreign_key: true, null: false
      t.datetime :time, null: false
      t.text :message_text, null: false
      t.boolean :unread
	  t.index [:sender_id, :reciever_id, :time], unique: true

      t.timestamps null: false
    end
  end
end

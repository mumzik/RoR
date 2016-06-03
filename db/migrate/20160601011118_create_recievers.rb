class CreateRecievers < ActiveRecord::Migration
  def change
    create_table :recievers do |t|
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

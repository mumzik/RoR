class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.references :user, index: true, foreign_key: true, null:false
      t.text :description
      t.text :hobbies
      t.string :bad_habbits, null: false
      t.string :living, null: false
      t.string :target, null: false

      t.timestamps null: false
    end
  end
end

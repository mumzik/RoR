class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.string :service_type, null: false
      t.integer :price, null: false
      t.datetime :time, null: false
      t.integer :validity, null: false

	  t.index [:user_id, :service_type, :time], unique: true

      t.timestamps null: false
    end
  end
end

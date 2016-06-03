class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login, null: false 
      t.string :name, null: false
      t.string :password, null: false
      t.string :sex, null: false
      t.date :bithday, null: false
      t.string :country, null: false
      t.string :city, null: false
      t.string :email, null: false, unique: true
      t.datetime :last_login_in
      t.integer :rang

	  t.index  :login, unique: true

      t.timestamps null: false
    end
  end
end

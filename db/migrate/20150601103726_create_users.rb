class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |u|
  		u.string :email
  		u.string :password
  		u.string :firstname
  		u.string :lastname
  		u.string :age
  		u.string :gender
  		u.timestamps
  	end
  end
end

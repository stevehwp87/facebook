class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |p|
  		p.string :post
  		p.timestamps
  	end
  end
end

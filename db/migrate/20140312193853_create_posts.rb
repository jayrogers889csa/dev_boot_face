class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
  end
end

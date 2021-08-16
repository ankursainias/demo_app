class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :category
      t.string :title
      t.text :body
      t.string :contact_details
      t.string :email

      t.timestamps
    end
  end
end

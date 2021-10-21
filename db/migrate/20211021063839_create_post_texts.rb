class CreatePostTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :post_texts do |t|
      t.string :title
      t.integer :category
      t.integer :num
      t.text :body
      t.string :image_id
      t.integer :user_id

      t.timestamps
    end
  end
end

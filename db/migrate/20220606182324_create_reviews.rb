class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :author, null: false
      t.string :title, null: false
      t.string :description, null: true
      t.integer :rating, null: false
      t.uuid :product_id, null: false 
      t.timestamps
    end
  end
end

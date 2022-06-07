# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products, id: :uuid do |t|
      t.string :name, null: false
      t.string :description 
      t.timestamps

      t.index :name, unique: true
    end
  end
end

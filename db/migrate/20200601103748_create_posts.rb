class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true, null: false
      t.string :comment, null: false
      t.integer :rating, null: false
      t.datetime :date, null: false

      t.timestamps
    end
  end
end

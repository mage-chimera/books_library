class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.datetime :releasedate
      t.integer :price
      t.string :author
      t.string :category

      t.timestamps
    end
  end
end

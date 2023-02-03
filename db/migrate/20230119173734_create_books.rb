class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.float :price
      t.date :publishedDate

      t.timestamps
    end
  end
end

class ChangeBooksTable < ActiveRecord::Migration[7.0]
  def change
    change_table(:books) do |t|
      t.column :author, :string
      t.column :price, :float
      t.column :publishedDate, :date
    end
  end
end

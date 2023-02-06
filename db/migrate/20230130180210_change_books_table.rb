class ChangeBooksTable < ActiveRecord::Migration[7.0]
  def change
    change_table(:books) do |t|
      t.column :author_, :string
      t.column :price_, :float
      t.column :publishedDate_, :date
    end
  end
end

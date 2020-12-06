class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :isbn
      t.integer :copies

      t.timestamps
    end
  end
end

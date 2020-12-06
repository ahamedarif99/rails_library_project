class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.string :title
      t.string :author
      t.integer :isbn

      t.timestamps
    end
  end
end

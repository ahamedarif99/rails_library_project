class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :review
      t.references :book

      t.timestamps
    end
  end
end

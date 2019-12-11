class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :difficulty
      t.integer :security
      t.text :body
      t.references :trail, foreign_key: true

      t.timestamps
    end
  end
end

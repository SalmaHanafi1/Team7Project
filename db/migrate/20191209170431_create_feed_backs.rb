class CreateFeedBacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feed_backs do |t|
      t.string :feedback
      t.text :body
      t.references :trail, foreign_key: true

      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.radio :security
      t.radio :difficulty
      t.text :feedback

      t.timestamps
    end
  end
end

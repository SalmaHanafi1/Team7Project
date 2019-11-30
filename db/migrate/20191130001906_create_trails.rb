class CreateTrails < ActiveRecord::Migration[5.2]
  def change
    create_table :trails do |t|
      t.string :Name
      t.string :Location
      t.text :Description

      t.timestamps
    end
  end
end

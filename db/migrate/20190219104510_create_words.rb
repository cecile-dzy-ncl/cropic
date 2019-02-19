class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.integer :x
      t.integer :y
      t.integer :width
      t.integer :height
      t.references :picture, foreign_key: true

      t.timestamps
    end
  end
end

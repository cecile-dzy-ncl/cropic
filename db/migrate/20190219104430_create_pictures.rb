class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.integer :x
      t.integer :y
      t.integer :width
      t.integer :height
      t.references :sentence, foreign_key: true

      t.timestamps
    end
  end
end

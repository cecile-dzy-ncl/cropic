class CreateSentences < ActiveRecord::Migration[5.2]
  def change
    create_table :sentences do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

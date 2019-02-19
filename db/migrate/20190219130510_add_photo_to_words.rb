class AddPhotoToWords < ActiveRecord::Migration[5.2]
  def change
    add_column :words, :photo, :string
  end
end

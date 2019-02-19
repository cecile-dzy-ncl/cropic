class AddPhraseToSentences < ActiveRecord::Migration[5.2]
  def change
    add_column :sentences, :phrase, :string
  end
end

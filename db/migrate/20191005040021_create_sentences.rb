class CreateSentences < ActiveRecord::Migration[5.2]
  def change
    create_table :sentences do |t|
      t.string :sentence
      t.text :memo
      t.string :classifying_id

      t.timestamps
    end
  end
end

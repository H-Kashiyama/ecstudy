class CreateEsentences < ActiveRecord::Migration[5.2]
  def change
    create_table :esentences do |t|
      t.string :esentence
      t.text :memo
      t.references :classifying, foreign_key: true

      t.timestamps
    end
  end
end  

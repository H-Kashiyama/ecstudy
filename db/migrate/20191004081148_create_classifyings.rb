class CreateClassifyings < ActiveRecord::Migration[5.2]
  def change
    create_table :classifyings do |t|
      t.string :classname

      t.timestamps
    end
  end
end

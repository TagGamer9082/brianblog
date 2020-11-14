class CreateTestblogs < ActiveRecord::Migration[6.0]
  def change
    create_table :testblogs do |t|
      t.string :Title
      t.text :Message
      t.string :Email

      t.timestamps
    end
  end
end

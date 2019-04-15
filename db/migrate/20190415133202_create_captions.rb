class CreateCaptions < ActiveRecord::Migration[5.2]
  def change
    create_table :captions do |t|
      t.references :meme, foreign_key: true
      t.string :text
      t.integer :likes

      t.timestamps
    end
  end
end

class AddColumnToMemes < ActiveRecord::Migration[5.2]
  def change
    add_column :memes, :gif_url, :string
  end
end

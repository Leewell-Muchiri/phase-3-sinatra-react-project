class CreateMemes < ActiveRecord::Migration[6.1]
  def change
    create_table :memes do |t|
      t.string :title
      t.string :your_meme
      t.timestamps
    end
  end
end

class CreateLyricWebsites < ActiveRecord::Migration[5.1]
  def change
    create_table :lyric_websites do |t|
      t.string :name

      t.timestamps
    end
  end
end

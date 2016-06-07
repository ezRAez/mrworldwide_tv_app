class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :youtube_id
      t.string :title
      t.string :album
      t.string :featured_artists
      t.date :released_on

      t.timestamps null: false
    end
  end
end

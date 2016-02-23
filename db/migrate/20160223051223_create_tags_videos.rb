class CreateTagsVideos < ActiveRecord::Migration
  def change
    create_table :tags_videos do |t|
      t.references :tag, index: true, foreign_key: true
      t.references :video, index: true, foreign_key: true
    end
  end
end

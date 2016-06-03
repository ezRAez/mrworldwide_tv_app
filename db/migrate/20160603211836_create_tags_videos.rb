class CreateTagsVideos < ActiveRecord::Migration
  def change
    create_table :tags_videos do |t|
      t.references :tag
      t.references :video
    end
  end
end

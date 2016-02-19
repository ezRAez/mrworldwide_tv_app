class Video < ActiveRecord::Base
  validates :youtube_id, uniqueness: true, presence: true, length: { is: 11 }
  validates :title, presence: true

  def youtube_link
    "https://youtu.be/#{self.youtube_id}"
  end

  def embed_link
    "https://www.youtube.com/embed/#{self.youtube_id}"
  end

  def fragment_id
    "video-#{self.id}"
  end
end

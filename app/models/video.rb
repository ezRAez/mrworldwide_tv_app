class Video < ActiveRecord::Base
  validates :embed_url, uniqueness: true, presence: true, length: { is: 11 }
  validates :title, presence: true

  def youtube_link
    "https://youtu.be/#{self.embed_url}"
  end

  def embed_link
    "https://www.youtube.com/embed/#{self.embed_url}"
  end
end

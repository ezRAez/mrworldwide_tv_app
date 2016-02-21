class Video < ActiveRecord::Base
  validates :youtube_id, uniqueness: true, presence: true, length: { is: 11 }
  validates :title, presence: true

  def self.search query
    wildcarded_query = "%#{query}%"
    where(
      "title ILIKE :title OR album ILIKE :album OR featured_artists ILIKE :featured OR tags ILIKE :tags",
      title:    wildcarded_query,
      album:    wildcarded_query,
      featured: wildcarded_query,
      tags:     wildcarded_query
    )
  end

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

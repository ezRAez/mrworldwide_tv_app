class Video < ActiveRecord::Base
  has_and_belongs_to_many :tags

  validates :youtube_id, uniqueness: true, presence: true, length: { is: 11 }
  validates :title, presence: true

  def self.search query
    wildcarded_query = "%#{query}%"

    self
      .includes(:tags)
      .where(
        "title ILIKE :title OR album ILIKE :album OR featured_artists ILIKE :featured OR tags.term ILIKE :tags",
        title:    wildcarded_query,
        album:    wildcarded_query,
        featured: wildcarded_query,
        tags:     wildcarded_query
      )
      .references(:tags)
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

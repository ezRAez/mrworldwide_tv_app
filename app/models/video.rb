class Video < ActiveRecord::Base
  validates :title, presence: true
  validates :youtube_id, presence: true, uniqueness: true

  before_save :set_released_on

  def set_released_on
    self.released_on ||= Date.today
  end
end

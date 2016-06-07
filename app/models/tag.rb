class Tag < ActiveRecord::Base
  has_and_belongs_to_many :videos

  self.validates :word, presence: true, uniqueness: true

  self.validate :starts_with_octothorpe

  def starts_with_octothorpe
    if self.word && self.word[0] != "#"
      self.errors.add(
        :hash_tag,
        "must be the first value in the word"
      )
    end
  end
end

class Tag < ApplicationRecord

  # VALIDATIONS
  validates :name, presence: true, uniqueness: true

  # ASSOCIATIONS
  has_many :taggings,
    foreign_key: :tag_id,
    class_name: :Tagging

  has_many :stories,
    through: :taggings,
    source: :story

  # METHODS
  def self.most_popular_tags
    self.all
      .joins(:taggings)
      .group('tags.id')
      .order('COUNT(taggings.story_id) DESC')
      .limit(8)
      .pluck(:name)
  end

  def most_popular_stories(amount)
    self
      .stories
      .joins(:claps)
      .group('stories.id')
      .order('COUNT(claps.id)')
      .limit(amount)
  end
  
end
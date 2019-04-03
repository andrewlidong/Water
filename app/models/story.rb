class Story < ApplicationRecord

  # VALIDATIONS
  validates :title, :subtitle, :body, :author_id,
    presence: true
  validate :ensure_image

  # ASSOCIATIONS
  belongs_to :author,
    foreign_key: :author_id,
    class_name: :User

  has_many :comments

  has_many :claps,
    as: :clapable
  
  has_many :taggings,
    foreign_key: :story_id,
    class_name: :Tagging,
    inverse_of: :story

  has_many :tags,
    through: :taggings,
    source: :tag
  
  has_many :bookmarks,
    foreign_key: :story_id,
    class_name: :Bookmark

  has_many :bookmark_users,
    through: :bookmarks,
    source: :user

  has_one_attached :image

  # METHODS
  
  def date
    months = [
      'Jan', 'Feb', 'Mar',
      'Apr', 'May', 'Jun', 
      'Jul', 'Aug', 'Sep',
      'Oct', 'Nov', 'Dec'
    ]

    month = months[self.created_at.month - 1]
    day = self.created_at.day

    return "#{month} #{day}"
  end

  def totalClaps
    self
      .claps
      .sum(:quantity)
  end

  def time_estimate 
    word_count = self.body.split(' ').length
    minutes = word_count / 150
    if minutes < 1
      "< 1 min read"
    else
      "#{minutes} min read"
    end
  end
  
  def self.popular_stories
    self
      .all
      .joins(:claps)
      .group('stories.id')
      .order('SUM(claps.quantity) DESC')
      .limit(5)
  end

  def self.stories_by_tag(name)
    self
      .all
      .joins(:tags)
      .where('tags.name = ?', name)
  end

  def all_tags=(names)
    new_tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
    self.tags = new_tags
  end

  def all_tags
    self.tags.map(&:name).join(', ')
  end

  private

  def ensure_image
    unless self.image.attached?
      errors[:image] << "must be attached"
    end
  end

end

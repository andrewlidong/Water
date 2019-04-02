class Comment < ApplicationRecord

  # VALIDATIONS
  validates :body, :story_id, :author_id, presence: true

  # ASSOCIATIONS
  belongs_to :author,
    class_name: :User

  belongs_to :story

  has_many :claps,
    as: :clapable

  
  # METHODS
  def date
    months = [
      'Jan', 'Feb', 'Mar', 
      'Apr', 'May', 'Jun', 
      'Jul', 'Aug', 'Sep', 
      'Oct', 'Nov', 'Dec']

    month = months[self.created_at.month]
    day = self.created_at.day

    return "#{month} #{day}"
  end

  def totalClaps
    self
      .claps
      .sum(:quantity)
  end

end

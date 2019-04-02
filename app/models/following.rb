class Following < ApplicationRecord

  # VALIDATIONS
  validates_uniqueness_of :followed_id, scope: [:follower_id]
  validates :followed_id, :follower_id, presence: true
  validate :not_self

  # ASSOCIATIONS
  belongs_to :followed,
    class_name: :User

  belongs_to :follower,
    class_name: :User

  # METHODS
  
  def not_self
    if self.followed_id == self.follower_id
      self.errors[:User] << "cannot follow yourself"
    end
  end

end
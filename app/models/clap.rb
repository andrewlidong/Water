class Clap < ApplicationRecord

  # VALIDATIONS
  validates :user_id, presence: true

  # ASSOCIATIONS
  belongs_to :user,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :clapable,
    polymorphic: true
    
end
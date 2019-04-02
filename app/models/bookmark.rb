class Bookmark < ApplicationRecord

  # ASSOCIATIONS
  belongs_to :story,
    foreign_key: :story_id,
    class_name: :Story
  
  belongs_to :user,
    foreign_key: :user_id,
    class_name: :User
    
end
class Post < ApplicationRecord
  scope :latest, -> { limit(9) }
end

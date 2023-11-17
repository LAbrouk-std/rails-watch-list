class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id,
    message: "You have already this mobie on your list"}
  belongs_to :movie
  belongs_to :list
end

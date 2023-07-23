class Bookmark < ApplicationRecord
  self.table_name = 'watch_bookmarks'
  belongs_to :movie, foreign_key: 'watch_movie_id'
  belongs_to :list, foreign_key: 'watch_list_id'
  validates :movie_id, presence: true
  validates :list_id, presence: true
  validates :comment, presence: true
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: {
    scope: :list_id,
    message: 'is already in the list'
  }
end

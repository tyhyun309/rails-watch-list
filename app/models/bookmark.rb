class Bookmark < ApplicationRecord
  self.table_name = 'watch_bookmarks'
  validates :watch_movie_id, presence: true
  validates :watch_list_id, presence: true
  validates :comment, presence: true
  validates :comment, length: { minimum: 6 }
  validates :watch_movie_id, uniqueness: {
    scope: :watch_list_id,
    message: 'is already in the list'
  }
  belongs_to :movie, foreign_key: 'watch_movie_id'
  belongs_to :list, foreign_key: 'watch_list_id'
end

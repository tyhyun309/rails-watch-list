class Movie < ApplicationRecord
  self.table_name = 'watch_movies'
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :overview, presence: true
  has_many :bookmarks, foreign_key: 'watch_movie_id'
end

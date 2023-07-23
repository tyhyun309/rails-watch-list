class List < ApplicationRecord
  self.table_name = 'watch_lists'
  has_many :bookmarks, dependent: :destroy, foreign_key: 'watch_list_id'
  has_many :movies, through: :bookmarks, foreign_key: 'watch_list_id'
  validates :name, presence: true
  validates :name, uniqueness: true
  has_one_attached :photo
end

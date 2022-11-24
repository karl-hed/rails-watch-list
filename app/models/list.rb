class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, uniqueness: true
  validates :name, presence: true
end
# List is a category
# Bookmark is a movie

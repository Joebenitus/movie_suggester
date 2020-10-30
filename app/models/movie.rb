class Movie < ApplicationRecord

  validates :title, presence: :true

  scope :search, -> (title) { where("LOWER(title) like ?", "%#{title.downcase}%") }
end
class Track < ActiveRecord::Base
  validates :track_title, presence: true, length: { maximum: 40 }
  validates :author, presence: true, length: { maximum: 25 }
end

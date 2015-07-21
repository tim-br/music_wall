class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :track
  validates_uniqueness_of :user, :scope => [:track]

end

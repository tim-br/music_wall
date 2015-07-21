class User < ActiveRecord::Base
  validates :user_name, presence: true, length: { maximum: 40 }
  validates :password, presence: true, length: { maximum: 25 }
end

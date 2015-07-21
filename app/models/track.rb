class Track < ActiveRecord::Base
  validates :track_title, presence: true, length: { maximum: 40 }
  validates :author, presence: true, length: { maximum: 25 }
end


SELECT checkout,checkin, full_name,
cast(checkout AS NUMERIC), cast(checkin AS NUMERIC),
checkout - checkin
FROM bookings ;

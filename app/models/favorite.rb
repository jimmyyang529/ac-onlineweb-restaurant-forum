class Favorite < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :restaurant, optional: true, :counter_cache => true
end

class Restaurant < ApplicationRecord
	validates_presence_of :name
  mount_uploader :image, PhotoImageUploader

  belongs_to :category, :optional => true  #單數

  has_many :comments
  has_many :users, :through => :comments

  has_many :favorites, :dependent => :destroy
  has_many :favorited_users, :through => :favorites, :source => :user

  def find_my_favorite(user)
		self.favorites.find_by(:user_id => user.id)
  end
end

class Girl < ActiveRecord::Base
  attr_accessible :about, :age, :available_today, :avatar, :bubs, :height, :name, :weight, :eyes, :name_for_form, :video, :available_date, :comments_count

  has_many :girl_photos
  has_many :photos, through: :girl_photos

  has_many :girl_comments
  has_many :comments, through: :girl_comments

  mount_uploader :avatar, AvatarUploader
end

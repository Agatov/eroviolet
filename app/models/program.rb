class Program < ActiveRecord::Base
  attr_accessible :about, :avatar, :content, :duration, :info, :name, :price
  mount_uploader :avatar, ProgramAvatarUploader
end

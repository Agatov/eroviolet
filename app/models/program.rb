class Program < ActiveRecord::Base
  attr_accessible :about, :avatar, :content, :duration, :info, :name, :price, :extra

  scope :programs_only, where(extra: 0)
  scope :extras_only, where(extra: true)

  mount_uploader :avatar, ProgramAvatarUploader
end

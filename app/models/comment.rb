class Comment < ActiveRecord::Base
  attr_accessible :answer, :content, :moderated, :username

  has_many :girl_comments
  belongs_to :girl, through: :girl_comments

end

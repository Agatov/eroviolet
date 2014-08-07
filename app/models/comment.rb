class Comment < ActiveRecord::Base
  attr_accessible :answer, :content, :moderated, :username, :created_at, :parent_id

  has_many :girl_comments

  validates_length_of :username, minimum: 3
  validates_length_of :content, minimum: 10

  def russian_date
    Russian::strftime(created_at, "%d %B %Y  (%H:%M)")
  end

end

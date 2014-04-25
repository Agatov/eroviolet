class Comment < ActiveRecord::Base
  attr_accessible :answer, :content, :moderated, :username, :created_at

  has_many :girl_comments


  def russian_date
    Russian::strftime(created_at, "%d %B %Y")
  end

end

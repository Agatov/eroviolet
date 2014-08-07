class AddCommentsCountToGirl < ActiveRecord::Migration
  def change
    add_column :girls, :comments_count, :integer, default: 0
  end
end

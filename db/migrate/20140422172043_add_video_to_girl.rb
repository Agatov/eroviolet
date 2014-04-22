class AddVideoToGirl < ActiveRecord::Migration
  def change
    add_column :girls, :video, :string
  end
end

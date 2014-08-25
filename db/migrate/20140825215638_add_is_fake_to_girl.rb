class AddIsFakeToGirl < ActiveRecord::Migration
  def change
    add_column :girls, :is_fake, :boolean, default: 0
  end
end

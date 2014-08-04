class AddAvailableDateToGirl < ActiveRecord::Migration
  def change
    add_column :girls, :available_date, :string
  end
end

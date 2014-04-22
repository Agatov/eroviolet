class AddNameForFormToGirl < ActiveRecord::Migration
  def change
    add_column :girls, :name_for_form, :string
  end
end

class AddExtraToProgram < ActiveRecord::Migration
  def change
    add_column :programs, :extra, :boolean, default: 0
  end
end

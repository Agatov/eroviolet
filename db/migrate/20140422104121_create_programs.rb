class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.text :about
      t.text :content
      t.integer :price
      t.integer :duration
      t.string :info
      t.string :avatar

      t.timestamps
    end
  end
end

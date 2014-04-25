class CreateGirlComments < ActiveRecord::Migration
  def change
    create_table :girl_comments do |t|
      t.integer :girl_id
      t.integer :comment_id

      t.timestamps
    end
  end
end

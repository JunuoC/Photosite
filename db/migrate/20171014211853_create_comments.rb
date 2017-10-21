class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|

      t.date :date_time
      t.text :comment_text
      t.references :user, foreign_key:true
      t.references :photo, foreign_key:true

      t.timestamps
    end
  end
end

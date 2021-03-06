class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|

      t.date       :date_time
      t.string     :file_name
      t.references :user, foreign_key:true

      t.timestamps
    end
  end
end

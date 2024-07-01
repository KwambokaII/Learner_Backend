class CreateVideos < ActiveRecord::Migration[7.1]
  def change
    create_table :videos do |t|
      t.integer :course_id
      t.string :title

      t.timestamps
    end
  end
end

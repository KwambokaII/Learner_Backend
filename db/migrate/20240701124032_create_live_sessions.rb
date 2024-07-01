class CreateLiveSessions < ActiveRecord::Migration[7.1]
  def change
    create_table :live_sessions do |t|
      t.integer :course_id
      t.datetime :start_time
      t.string :link

      t.timestamps
    end
  end
end

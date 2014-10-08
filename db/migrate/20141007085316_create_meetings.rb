class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.integer :meetingid
      t.date :date
      t.timestamps
    end
  end
end

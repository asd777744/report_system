class ChangeMeetingid < ActiveRecord::Migration
  def change
    rename_column :meetings, :meetingid, :meetingname
    change_column :meetings, :meetingname, :string
  end
end

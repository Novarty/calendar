class AddNotNullFieldsToMeetings < ActiveRecord::Migration[5.0]
  def change
    change_column_null :meetings, :name, false
    change_column_null :meetings, :start_time, false
  end
end

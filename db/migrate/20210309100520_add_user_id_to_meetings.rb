class AddUserIdToMeetings < ActiveRecord::Migration[6.0]
  def change
    change_table :meetings do |t|
      t.references :user, foreign_key: true
    end
  end
end

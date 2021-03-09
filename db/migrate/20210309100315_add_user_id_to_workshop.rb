class AddUserIdToWorkshop < ActiveRecord::Migration[6.0]
  def change
    change_table :workshops do |t|
      t.references :user, foreign_key: true
    end
  end
end

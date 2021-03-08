class CreateOfficeHours < ActiveRecord::Migration[6.0]
  def change
    create_table :office_hours do |t|
      t.string :name
      t.string :location
      t.text :description
      t.datetime :date
      t.float :duration
      t.integer :attendants

      t.timestamps
    end
  end
end

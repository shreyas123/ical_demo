class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.timestamp :start_date
      t.timestamp :end_date
      t.string :description
      t.string :location
      t.string :attendees
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end

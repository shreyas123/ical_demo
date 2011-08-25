class CreateEvent1s < ActiveRecord::Migration
  def self.up
    create_table :event1s do |t|
      t.timestamp :start_date
      t.timestamp :end_time
      t.string :description
      t.string :location
      t.string :attendees

      t.timestamps
    end
  end

  def self.down
    drop_table :event1s
  end
end

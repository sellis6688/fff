class Feedback < ActiveRecord::Migration
  def self.up
    create_table :feedbacks do |t|
      t.integer :event_id
      t.integer :feast
      t.integer :famine
      t.integer :members_only
      
      t.timestamps
    end
  end

  def self.down
    drop_table :feedbacks
  end
end

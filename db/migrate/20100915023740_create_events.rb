class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip_code
      t.datetime :start_time
      t.datetime :end_time
      t.integer :network_id

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end

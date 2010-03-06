class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.integer :howcast_id, :null => true
      t.boolean :is_flagged, :null => false, :default => true
    end
  end

  def self.down
    drop_table :videos
  end
end

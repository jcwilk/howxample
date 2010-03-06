class Video < ActiveRecord::Base
  attr_accessor :howcast_video

  def self.new_from_howcast(howcast_videos)
    howcast_videos = [howcast_videos] if howcast_videos.is_a?(Howcast::Client::Video)
    #TODO: Return a new Video with howcast_id and howcast_video attached
  end
end
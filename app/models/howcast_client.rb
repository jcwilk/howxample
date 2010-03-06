# A wrapper for the Howcast::Client which will return the videos as unsaved Video objects with
# the Howcast::Client::Video objects attached

class HowcastClient
  attr_accessor :api

  def initialize
    raise "API Key not present!" if HowcastClient.api_key.blank?
    self.api = Howcast::Client.new(:key => HowcastClient.api_key)
  end

  def self.api_key=(key)
    @@_api_key = key
  end

  def self.api_key
    @@_api_key
  end

  def videos(options = {})
    return Video.new_from_howcast(api.videos(options))
  end
end
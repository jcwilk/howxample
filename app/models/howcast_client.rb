class HowcastClient
  def self.api_key=(path)
    @@_api_key = path
  end

  def self.api_key
    @@_api_key
  end

  private

  def self.api
    raise "API Key not present!" if self.api_key.blank?
    return Howcast::Client.new(:key => self.api_key)
  end
end
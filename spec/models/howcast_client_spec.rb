require File.dirname(__FILE__) + '/../spec_helper'

describe HowcastClient do
  before(:each) do
    HowcastClient.api_key = fake_auth_key
    @client = HowcastClient.new
    @api = mock_model(Howcast::Client)
    @client.api = @api
    @videos = [Factory.build(:video)]
    @howcast_videos = [mock_model(Howcast::Client::Video)]
  end

  describe "videos" do
    it "looks up and returns Videos for a generic call" do
      @api.should_receive(:videos).with({}).and_return(@howcast_videos)
      Video.should_receive(:new_from_howcast).and_return(@videos)
      @client.videos.should == @videos
    end

    it "performs a search"

    it "skips to a certain page"
  end

  private

  def fake_auth_key
    'fgdfgdfgdgdrofds'
  end
end
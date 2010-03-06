require File.dirname(__FILE__) + '/../spec_helper'

describe VideosController do
  before(:each) do
    @client = mock_model(HowcastClient)
    HowcastClient.stub!(:new).and_return(@client)
    @videos = [Factory.build(:video)]*5
  end

  describe 'index' do
    it "pulls up a page of videos" do
      @client.should_receive(:videos).and_return(@videos)
      get :index
    end

    it "pulls up a second page of videos" do
      @client.should_receive(:videos).with(:page => 2).and_return(@videos)
      get :index, {'page' => '2'}
    end

    it "searches for a phrase and returns a page of videos" do
      @client.should_receive(:videos).with(:search => 'blah').and_return(@videos)
      get :index, {'search' => 'blah'}
    end
  end

  describe 'show' do
    it "pulls up a single video"

    it "returns an error if there is no video"
  end

  describe 'flag' do
    it "flags and saves a video"

    it "returns an error if the video isn't found"
  end
end

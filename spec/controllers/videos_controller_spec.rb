require File.dirname(__FILE__) + '/../spec_helper'

describe VideosController do
  describe 'index' do
    it "pulls up a page of videos"

    it "pulls up a second page of videos"

    it "searches for a phrase and returns a page of videos"
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

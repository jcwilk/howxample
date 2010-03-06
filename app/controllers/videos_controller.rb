class VideosController < ApplicationController
  def index
    client = HowcastClient.new

    #Ugly but explicit
    options = {}
    options[:search] = params['search'] if !params['search'].blank?
    options[:page] = params['page'].to_i if !params['page'].blank?

    @videos = client.videos(options)
  end

  def show; end

  def flag; end
end
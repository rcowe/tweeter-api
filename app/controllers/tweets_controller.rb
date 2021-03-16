class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    render json: @tweets
  end

  def show
    render json: @tweet
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

end